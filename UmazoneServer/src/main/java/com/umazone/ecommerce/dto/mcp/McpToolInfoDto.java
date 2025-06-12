package com.umazone.ecommerce.dto.mcp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class McpToolInfoDto {
    private String name;
    private String description;
    private McpInputSchemaDto inputSchema;
}
