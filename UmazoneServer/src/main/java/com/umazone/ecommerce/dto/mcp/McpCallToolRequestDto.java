package com.umazone.ecommerce.dto.mcp;

import lombok.Data;
import java.util.Map;

@Data
public class McpCallToolRequestDto {
    private String name; // Name of the tool to call
    private Map<String, Object> arguments; // Arguments for the tool
}
