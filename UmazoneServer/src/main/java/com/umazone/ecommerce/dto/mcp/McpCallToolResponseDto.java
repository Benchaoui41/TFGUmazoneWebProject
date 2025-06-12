package com.umazone.ecommerce.dto.mcp;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL) // Don't include null fields in JSON
public class McpCallToolResponseDto {
    private List<McpContentDto> content;
    private Boolean isError; // Optional: true if the tool execution resulted in an error
}
