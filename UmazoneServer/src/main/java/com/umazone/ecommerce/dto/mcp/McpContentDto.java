package com.umazone.ecommerce.dto.mcp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class McpContentDto {
    private String type = "text"; // Defaulting to "text" as per example
    private String text;
}
