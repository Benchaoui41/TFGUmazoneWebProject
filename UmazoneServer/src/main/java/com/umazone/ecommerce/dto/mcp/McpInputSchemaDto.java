package com.umazone.ecommerce.dto.mcp;

import java.util.Map;

// Using a Map for flexibility to represent the JSON Schema
// We could create more specific classes if needed for validation
public class McpInputSchemaDto extends java.util.HashMap<String, Object> {
    public McpInputSchemaDto() {
        super();
    }

    public McpInputSchemaDto(Map<String, Object> map) {
        super(map);
    }
}
