return {
    -- Ana Vurgu Renkleri (Border, Aktif Bütünlükler)
    primary         = "rgba({{colors.primary.default.hex_stripped}}ee)",
    on_primary      = "rgba({{colors.on_primary.default.hex_stripped}}ee)",
    
    -- İkincil ve Üçüncül Vurgular (Gradient border yapmak istersen)
    secondary       = "rgba({{colors.secondary.default.hex_stripped}}ee)",
    tertiary        = "rgba({{colors.tertiary.default.hex_stripped}}ee)",

    -- Arka Plan ve Yüzeyler (Blur, Opacity, İnaktif Border)
    background      = "rgba({{colors.surface.default.hex_stripped}}ee)",
    surface         = "rgba({{colors.surface.default.hex_stripped}}ee)",
    surface_variant = "rgba({{colors.surface_variant.default.hex_stripped}}ee)",
    
    -- Metin / Ön Plan Renkleri
    foreground      = "rgba({{colors.on_surface.default.hex_stripped}}ee)",
    on_surface      = "rgba({{colors.on_surface.default.hex_stripped}}ee)",

    -- Hata / Uyanış Renkleri (Gerekirse)
    error           = "rgba({{colors.error.default.hex_stripped}}ee)",
}
