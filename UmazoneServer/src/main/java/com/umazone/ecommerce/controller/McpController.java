package com.umazone.ecommerce.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.umazone.ecommerce.dao.ProductRepository;
import com.umazone.ecommerce.dto.mcp.*;
import com.umazone.ecommerce.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/mcp") // Base path for MCP endpoints
public class McpController {

    private final ProductRepository productRepository;
    private final ObjectMapper objectMapper; // For converting objects to JSON strings

    @Autowired
    public McpController(ProductRepository productRepository, ObjectMapper objectMapper) {
        this.productRepository = productRepository;
        this.objectMapper = objectMapper;
    }

    @GetMapping("/tools")
    public McpListToolsResponseDto listTools() {
        // Define the input schema for getProductById
        McpInputSchemaDto getProductByIdSchema = new McpInputSchemaDto();
        getProductByIdSchema.put("type", "object");

        Map<String, Object> properties = new HashMap<>();
        Map<String, Object> productIdProperty = new HashMap<>();
        productIdProperty.put("type", "number"); // Corresponds to Long in Java
        productIdProperty.put("description", "The ID of the product to retrieve.");
        properties.put("productId", productIdProperty);

        getProductByIdSchema.put("properties", properties);
        getProductByIdSchema.put("required", Collections.singletonList("productId"));

        // Define the getProductById tool
        McpToolInfoDto getProductByIdTool = new McpToolInfoDto(
                "getProductById",
                "Get product details by its ID",
                getProductByIdSchema);

        // Create the response
        McpListToolsResponseDto response = new McpListToolsResponseDto();
        response.setTools(Collections.singletonList(getProductByIdTool));

        return response;
    }

    // We will add the handler for CallTool (POST /mcp/call-tool) next

    @PostMapping("/call-tool")
    public ResponseEntity<McpCallToolResponseDto> callTool(@RequestBody McpCallToolRequestDto request) {
        String toolName = request.getName();
        Map<String, Object> arguments = request.getArguments();

        if ("getProductById".equals(toolName)) {
            return handleGetProductById(arguments);
        } else {
            // Handle unknown tool
            McpContentDto errorContent = new McpContentDto("text", "Error: Unknown tool name '" + toolName + "'");
            McpCallToolResponseDto errorResponse = new McpCallToolResponseDto(Collections.singletonList(errorContent),
                    true);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorResponse);
        }
    }

    private ResponseEntity<McpCallToolResponseDto> handleGetProductById(Map<String, Object> arguments) {
        Object productIdObj = arguments.get("productId");
        if (!(productIdObj instanceof Number)) {
            McpContentDto errorContent = new McpContentDto("text",
                    "Error: Invalid or missing 'productId' argument. Expected a number.");
            McpCallToolResponseDto errorResponse = new McpCallToolResponseDto(Collections.singletonList(errorContent),
                    true);
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(errorResponse);
        }

        Long productId = ((Number) productIdObj).longValue();

        try {
            Product product = productRepository.findById(productId)
                    .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                            "Product not found with ID: " + productId));

            // Convert product to JSON string
            String productJson = objectMapper.writeValueAsString(product);

            McpContentDto successContent = new McpContentDto("text", productJson);
            McpCallToolResponseDto successResponse = new McpCallToolResponseDto(
                    Collections.singletonList(successContent), false);
            return ResponseEntity.ok(successResponse);

        } catch (ResponseStatusException e) {
            McpContentDto errorContent = new McpContentDto("text", "Error: " + e.getReason());
            McpCallToolResponseDto errorResponse = new McpCallToolResponseDto(Collections.singletonList(errorContent),
                    true);
            return ResponseEntity.status(e.getStatus()).body(errorResponse);
        } catch (JsonProcessingException e) {
            // Error serializing the product to JSON
            McpContentDto errorContent = new McpContentDto("text", "Error: Could not serialize product data.");
            McpCallToolResponseDto errorResponse = new McpCallToolResponseDto(Collections.singletonList(errorContent),
                    true);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
        } catch (Exception e) {
            // Catch unexpected errors
            McpContentDto errorContent = new McpContentDto("text",
                    "Error: An unexpected error occurred: " + e.getMessage());
            McpCallToolResponseDto errorResponse = new McpCallToolResponseDto(Collections.singletonList(errorContent),
                    true);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
        }
    }
}
