package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
var _fn : stdgo.GoArray<stdgo.GoFloat32> = (new stdgo.GoArray<stdgo.GoFloat32>(128, 128, ...[
(1 : stdgo.GoFloat64),
(0.963599681854248 : stdgo.GoFloat64),
(0.9362826943397522 : stdgo.GoFloat64),
(0.9130436182022095 : stdgo.GoFloat64),
(0.8922816514968872 : stdgo.GoFloat64),
(0.8732430338859558 : stdgo.GoFloat64),
(0.8555005788803101 : stdgo.GoFloat64),
(0.8387836217880249 : stdgo.GoFloat64),
(0.8229072093963623 : stdgo.GoFloat64),
(0.8077383041381836 : stdgo.GoFloat64),
(0.7931770086288452 : stdgo.GoFloat64),
(0.7791460752487183 : stdgo.GoFloat64),
(0.7655841708183289 : stdgo.GoFloat64),
(0.7524415850639343 : stdgo.GoFloat64),
(0.7396772503852844 : stdgo.GoFloat64),
(0.7272568941116333 : stdgo.GoFloat64),
(0.7151514887809753 : stdgo.GoFloat64),
(0.7033361196517944 : stdgo.GoFloat64),
(0.6917891502380371 : stdgo.GoFloat64),
(0.6804918646812439 : stdgo.GoFloat64),
(0.6694276928901672 : stdgo.GoFloat64),
(0.6585819721221924 : stdgo.GoFloat64),
(0.6479418277740479 : stdgo.GoFloat64),
(0.6374954581260681 : stdgo.GoFloat64),
(0.6272324919700623 : stdgo.GoFloat64),
(0.6171433925628662 : stdgo.GoFloat64),
(0.6072195172309875 : stdgo.GoFloat64),
(0.5974531769752502 : stdgo.GoFloat64),
(0.5878370404243469 : stdgo.GoFloat64),
(0.5783646702766418 : stdgo.GoFloat64),
(0.5690299868583679 : stdgo.GoFloat64),
(0.5598273873329163 : stdgo.GoFloat64),
(0.550751805305481 : stdgo.GoFloat64),
(0.5417983531951904 : stdgo.GoFloat64),
(0.5329626798629761 : stdgo.GoFloat64),
(0.5242405533790588 : stdgo.GoFloat64),
(0.5156282186508179 : stdgo.GoFloat64),
(0.5071220397949219 : stdgo.GoFloat64),
(0.49871864914894104 : stdgo.GoFloat64),
(0.4904148280620575 : stdgo.GoFloat64),
(0.48220765590667725 : stdgo.GoFloat64),
(0.47409430146217346 : stdgo.GoFloat64),
(0.466072142124176 : stdgo.GoFloat64),
(0.45813870429992676 : stdgo.GoFloat64),
(0.45029163360595703 : stdgo.GoFloat64),
(0.44252872467041016 : stdgo.GoFloat64),
(0.4348478317260742 : stdgo.GoFloat64),
(0.42724698781967163 : stdgo.GoFloat64),
(0.41972434520721436 : stdgo.GoFloat64),
(0.41227802634239197 : stdgo.GoFloat64),
(0.40490642189979553 : stdgo.GoFloat64),
(0.39760786294937134 : stdgo.GoFloat64),
(0.3903807997703552 : stdgo.GoFloat64),
(0.3832238018512726 : stdgo.GoFloat64),
(0.3761354684829712 : stdgo.GoFloat64),
(0.3691144585609436 : stdgo.GoFloat64),
(0.36215949058532715 : stdgo.GoFloat64),
(0.3552693724632263 : stdgo.GoFloat64),
(0.3484429717063904 : stdgo.GoFloat64),
(0.3416791558265686 : stdgo.GoFloat64),
(0.33497685194015503 : stdgo.GoFloat64),
(0.32833510637283325 : stdgo.GoFloat64),
(0.3217529058456421 : stdgo.GoFloat64),
(0.3152293860912323 : stdgo.GoFloat64),
(0.30876362323760986 : stdgo.GoFloat64),
(0.3023548424243927 : stdgo.GoFloat64),
(0.2960021495819092 : stdgo.GoFloat64),
(0.2897048592567444 : stdgo.GoFloat64),
(0.28346219658851624 : stdgo.GoFloat64),
(0.2772735059261322 : stdgo.GoFloat64),
(0.271138072013855 : stdgo.GoFloat64),
(0.2650552988052368 : stdgo.GoFloat64),
(0.25902456045150757 : stdgo.GoFloat64),
(0.25304529070854187 : stdgo.GoFloat64),
(0.24711695313453674 : stdgo.GoFloat64),
(0.24123899638652802 : stdgo.GoFloat64),
(0.23541094362735748 : stdgo.GoFloat64),
(0.22963231801986694 : stdgo.GoFloat64),
(0.22390270233154297 : stdgo.GoFloat64),
(0.21822164952754974 : stdgo.GoFloat64),
(0.21258877217769623 : stdgo.GoFloat64),
(0.20700371265411377 : stdgo.GoFloat64),
(0.20146611332893372 : stdgo.GoFloat64),
(0.1959756463766098 : stdgo.GoFloat64),
(0.19053204357624054 : stdgo.GoFloat64),
(0.18513499200344086 : stdgo.GoFloat64),
(0.17978426814079285 : stdgo.GoFloat64),
(0.1744796335697174 : stdgo.GoFloat64),
(0.16922089457511902 : stdgo.GoFloat64),
(0.16400785744190216 : stdgo.GoFloat64),
(0.1588403731584549 : stdgo.GoFloat64),
(0.15371830761432648 : stdgo.GoFloat64),
(0.14864157140254974 : stdgo.GoFloat64),
(0.14361007511615753 : stdgo.GoFloat64),
(0.13862377405166626 : stdgo.GoFloat64),
(0.13368265330791473 : stdgo.GoFloat64),
(0.12878671288490295 : stdgo.GoFloat64),
(0.12393598258495331 : stdgo.GoFloat64),
(0.11913054436445236 : stdgo.GoFloat64),
(0.11437050998210907 : stdgo.GoFloat64),
(0.10965602099895477 : stdgo.GoFloat64),
(0.1049872562289238 : stdgo.GoFloat64),
(0.10036443918943405 : stdgo.GoFloat64),
(0.09578784555196762 : stdgo.GoFloat64),
(0.09125780314207077 : stdgo.GoFloat64),
(0.08677466958761215 : stdgo.GoFloat64),
(0.08233889937400818 : stdgo.GoFloat64),
(0.07795098423957825 : stdgo.GoFloat64),
(0.07361150532960892 : stdgo.GoFloat64),
(0.06932111829519272 : stdgo.GoFloat64),
(0.06508058309555054 : stdgo.GoFloat64),
(0.06089077144861221 : stdgo.GoFloat64),
(0.05675266310572624 : stdgo.GoFloat64),
(0.05266740173101425 : stdgo.GoFloat64),
(0.048636294901371 : stdgo.GoFloat64),
(0.044660862535238266 : stdgo.GoFloat64),
(0.040742866694927216 : stdgo.GoFloat64),
(0.03688438981771469 : stdgo.GoFloat64),
(0.03308788686990738 : stdgo.GoFloat64),
(0.029356317594647408 : stdgo.GoFloat64),
(0.025693291798233986 : stdgo.GoFloat64),
(0.02210330404341221 : stdgo.GoFloat64),
(0.018592102453112602 : stdgo.GoFloat64),
(0.015167297795414925 : stdgo.GoFloat64),
(0.011839478276669979 : stdgo.GoFloat64),
(0.0086244847625494 : stdgo.GoFloat64),
(0.005548994988203049 : stdgo.GoFloat64),
(0.0026696291752159595 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>);