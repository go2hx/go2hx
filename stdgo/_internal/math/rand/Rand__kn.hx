package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
var _kn : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(128, 128, ...[
(1991057938u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(1611602771u32 : stdgo.GoUInt32),
(1826899878u32 : stdgo.GoUInt32),
(1918584482u32 : stdgo.GoUInt32),
(1969227037u32 : stdgo.GoUInt32),
(2001281515u32 : stdgo.GoUInt32),
(2023368125u32 : stdgo.GoUInt32),
(2039498179u32 : stdgo.GoUInt32),
(2051788381u32 : stdgo.GoUInt32),
(2061460127u32 : stdgo.GoUInt32),
(2069267110u32 : stdgo.GoUInt32),
(2075699398u32 : stdgo.GoUInt32),
(2081089314u32 : stdgo.GoUInt32),
(2085670119u32 : stdgo.GoUInt32),
(2089610331u32 : stdgo.GoUInt32),
(2093034710u32 : stdgo.GoUInt32),
(2096037586u32 : stdgo.GoUInt32),
(2098691595u32 : stdgo.GoUInt32),
(2101053571u32 : stdgo.GoUInt32),
(2103168620u32 : stdgo.GoUInt32),
(2105072996u32 : stdgo.GoUInt32),
(2106796166u32 : stdgo.GoUInt32),
(2108362327u32 : stdgo.GoUInt32),
(2109791536u32 : stdgo.GoUInt32),
(2111100552u32 : stdgo.GoUInt32),
(2112303493u32 : stdgo.GoUInt32),
(2113412330u32 : stdgo.GoUInt32),
(2114437283u32 : stdgo.GoUInt32),
(2115387130u32 : stdgo.GoUInt32),
(2116269447u32 : stdgo.GoUInt32),
(2117090813u32 : stdgo.GoUInt32),
(2117856962u32 : stdgo.GoUInt32),
(2118572919u32 : stdgo.GoUInt32),
(2119243101u32 : stdgo.GoUInt32),
(2119871411u32 : stdgo.GoUInt32),
(2120461303u32 : stdgo.GoUInt32),
(2121015852u32 : stdgo.GoUInt32),
(2121537798u32 : stdgo.GoUInt32),
(2122029592u32 : stdgo.GoUInt32),
(2122493434u32 : stdgo.GoUInt32),
(2122931299u32 : stdgo.GoUInt32),
(2123344971u32 : stdgo.GoUInt32),
(2123736059u32 : stdgo.GoUInt32),
(2124106020u32 : stdgo.GoUInt32),
(2124456175u32 : stdgo.GoUInt32),
(2124787725u32 : stdgo.GoUInt32),
(2125101763u32 : stdgo.GoUInt32),
(2125399283u32 : stdgo.GoUInt32),
(2125681194u32 : stdgo.GoUInt32),
(2125948325u32 : stdgo.GoUInt32),
(2126201433u32 : stdgo.GoUInt32),
(2126441213u32 : stdgo.GoUInt32),
(2126668298u32 : stdgo.GoUInt32),
(2126883268u32 : stdgo.GoUInt32),
(2127086657u32 : stdgo.GoUInt32),
(2127278949u32 : stdgo.GoUInt32),
(2127460589u32 : stdgo.GoUInt32),
(2127631985u32 : stdgo.GoUInt32),
(2127793506u32 : stdgo.GoUInt32),
(2127945490u32 : stdgo.GoUInt32),
(2128088244u32 : stdgo.GoUInt32),
(2128222044u32 : stdgo.GoUInt32),
(2128347141u32 : stdgo.GoUInt32),
(2128463758u32 : stdgo.GoUInt32),
(2128572095u32 : stdgo.GoUInt32),
(2128672327u32 : stdgo.GoUInt32),
(2128764606u32 : stdgo.GoUInt32),
(2128849065u32 : stdgo.GoUInt32),
(2128925811u32 : stdgo.GoUInt32),
(2128994934u32 : stdgo.GoUInt32),
(2129056501u32 : stdgo.GoUInt32),
(2129110560u32 : stdgo.GoUInt32),
(2129157136u32 : stdgo.GoUInt32),
(2129196237u32 : stdgo.GoUInt32),
(2129227847u32 : stdgo.GoUInt32),
(2129251929u32 : stdgo.GoUInt32),
(2129268426u32 : stdgo.GoUInt32),
(2129277255u32 : stdgo.GoUInt32),
(2129278312u32 : stdgo.GoUInt32),
(2129271467u32 : stdgo.GoUInt32),
(2129256561u32 : stdgo.GoUInt32),
(2129233410u32 : stdgo.GoUInt32),
(2129201800u32 : stdgo.GoUInt32),
(2129161480u32 : stdgo.GoUInt32),
(2129112170u32 : stdgo.GoUInt32),
(2129053545u32 : stdgo.GoUInt32),
(2128985244u32 : stdgo.GoUInt32),
(2128906855u32 : stdgo.GoUInt32),
(2128817916u32 : stdgo.GoUInt32),
(2128717911u32 : stdgo.GoUInt32),
(2128606255u32 : stdgo.GoUInt32),
(2128482298u32 : stdgo.GoUInt32),
(2128345305u32 : stdgo.GoUInt32),
(2128194452u32 : stdgo.GoUInt32),
(2128028813u32 : stdgo.GoUInt32),
(2127847342u32 : stdgo.GoUInt32),
(2127648860u32 : stdgo.GoUInt32),
(2127432031u32 : stdgo.GoUInt32),
(2127195339u32 : stdgo.GoUInt32),
(2126937058u32 : stdgo.GoUInt32),
(2126655214u32 : stdgo.GoUInt32),
(2126347546u32 : stdgo.GoUInt32),
(2126011445u32 : stdgo.GoUInt32),
(2125643893u32 : stdgo.GoUInt32),
(2125241376u32 : stdgo.GoUInt32),
(2124799783u32 : stdgo.GoUInt32),
(2124314271u32 : stdgo.GoUInt32),
(2123779094u32 : stdgo.GoUInt32),
(2123187386u32 : stdgo.GoUInt32),
(2122530867u32 : stdgo.GoUInt32),
(2121799464u32 : stdgo.GoUInt32),
(2120980787u32 : stdgo.GoUInt32),
(2120059418u32 : stdgo.GoUInt32),
(2119015917u32 : stdgo.GoUInt32),
(2117825402u32 : stdgo.GoUInt32),
(2116455471u32 : stdgo.GoUInt32),
(2114863093u32 : stdgo.GoUInt32),
(2112989789u32 : stdgo.GoUInt32),
(2110753906u32 : stdgo.GoUInt32),
(2108037662u32 : stdgo.GoUInt32),
(2104664315u32 : stdgo.GoUInt32),
(2100355223u32 : stdgo.GoUInt32),
(2094642347u32 : stdgo.GoUInt32),
(2086670106u32 : stdgo.GoUInt32),
(2074676188u32 : stdgo.GoUInt32),
(2054300022u32 : stdgo.GoUInt32),
(2010539237u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>);