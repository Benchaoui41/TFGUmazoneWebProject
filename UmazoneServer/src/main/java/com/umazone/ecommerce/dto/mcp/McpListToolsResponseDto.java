package com.umazone.ecommerce.dto.mcp;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class McpListToolsResponseDto {
    private List<McpToolInfoDto> tools;
}
