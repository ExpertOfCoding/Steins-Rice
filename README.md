# Steins-Rice NOT COMPLETED

**WARNING THIS README WAS WRITTEN IN TURKISH DUE TO HIGH DEMAND BY THE TURKISH FELLOWS**
**Her seyden once bu paketleri indirin**
1. skwd-wall-v2
2. noctalia
3. hyprland
4. matugen
**Zorunlu olmayanlar ama sistemimde kullandiklarim:**
**eger bunlari kurmazsaniz kucuk hatalar cikabilir matugende ilgili yerleri silerseniz hatalar gider**
**kurmazsaniz hyprland.lua da degistirmeniz gereken yerler olabilir SUPER+E,SUPER+Q 
1-vscodium ( dosya duzenlemesi vs yapmak icin )
2-kitty (terminal)
3-btop ( gorev yoneticisi gibi )
4-yazi ( Dosya yoneticisi )
5-VLC (Muzik/Video calar)
6-LibreWolf (Tarayici)
7-Calibre (E-kitap Epub)
8- zsh ve powerlevel10k ( NE OLDUKLARINI BILMIYORSANIZ KURMAYIN !!! )

**HATA CIKAR VEYA ANLAMADIGINIZ BIR YER OLURSA ILETISIME GECIN, ISSUE DE ACABILIRSINIZ**
   
**noctalia indirin ve .config/noctalia yi kendi sisteminizdeki config noctalia ile degistirin ya da yeni klasor olusturun eger yoksa ayni isimlerle**
**skwd-wall-v2 kurun ve su ayarlari degistirn:**
1.Color > Theme > Color Source. Bu ayardan Matugeni secin.
2. Simdilik bu yeter daha sonra buraya donucez
**simdi bos .config>>matugen klasorlerini olusturun varsa da cd ile icine girin ( ikiside klasor )**
1. sonra icine githubdaki "./config/matugen" icindeki her seyi koyun.
2. ardindan bos bir terminal acin ve **skwd-wall-v2** yazin icine
3. yeni bir duvar kagidi secin ordan eger yoksa Pictures>>Wallpapers olusturun ve oraya resimler indirin
....
**Ardindan hyprland ile devam edelim blur seceneklerini ayarlamamiz lazim**
1. home klasorunuze alt klasor ekleyin >themes>matugen (bu ikiside klasor olacak ic ice)
2. yeni bir dosya olusturun : colors-hyprland.lua ( BUNU ILERLEYEN ADIMLARDA OTOMATIK YAPTIRICAZ MATUGEN ILE)
3. dosyayi vscodium ile acin ya da kullandiginiz kod editoruyle acin
4. yada bu ilk 3 adimi yapmak yerine githubdan klasoru kopyalayin
```
return {
    primary         = "rgba(c9bfffee)",
    on_primary      = "rgba(2e009cee)",
    
    secondary       = "rgba(d3bfe6ee)",
    tertiary        = "rgba(e3b8ebee)",


    background      = "rgba(14121cee)",
    surface         = "rgba(14121cee)",
    surface_variant = "rgba(484551ee)",
    
    foreground      = "rgba(e5e0efee)",
    on_surface      = "rgba(e5e0efee)",


    error           = "rgba(ffb4abee)",
}
```
4. yukaridaki kodlari yazin ve hic bir sey degistirmeyin bu adimi sonrasinda otomatik yaptiricaz ve sistem renkleriniz otomatik degisecek.
5. hyprland.lua dosyasinin en ustune su satirlari ekleyin:
```
package.path = package.path .. ";" .. os.getenv("HOME") .. "/themes/matugen/?.lua"
local colors = require("colors-hyprland")
```
6.**LOOK AND FEEL** kismini bulun ve bu degerleri girin var olan hl.configi silip yerine bunu yapistirin:
```
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 1,

        col = {
            -- Sabit renkler yerine Matugen'den gelen renkleri bağladık:
            active_border   = { colors = { colors.primary, colors.secondary }, angle = 45 },
            inactive_border = colors.inactive,
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 14,
        rounding_power = 3,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.86205,
        inactive_opacity = 0.6205,

        shadow = {
            enabled      = true,
            range        = 7,
            render_power = 8,
            color        = colors.surface, -- Gölge rengini de Matugen'e bağladık
        },

        blur = {
            enabled   = true,
            size      = 6,
            passes    = 4,
	        noise     = 0.05,
            vibrancy  = 0.6205,
        },
    },

    animations = {
        enabled = true,
    },
})
```
7. 6. Adimi yapmak yerine .config/hypr klasorunu kendi sisteminizdeki hypr klasorunun yerine koyun ekstra olarak kisayollar ve araclar var.
8. SON ADIM noctalia-config.toml'i indirin ve noctalia config'inizle degistirin
