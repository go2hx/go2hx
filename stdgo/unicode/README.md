# Module: `stdgo.unicode`

[(view library index)](../stdgo.md)


# Overview



Package unicode provides data and functions to test some properties of
Unicode code points.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function get_adlam():stdgo._internal.unicode.RangeTable`](<#function-get_adlam>)

- [`function get_ahom():stdgo._internal.unicode.RangeTable`](<#function-get_ahom>)

- [`function get_anatolian_Hieroglyphs():stdgo._internal.unicode.RangeTable`](<#function-get_anatolian_hieroglyphs>)

- [`function get_arabic():stdgo._internal.unicode.RangeTable`](<#function-get_arabic>)

- [`function get_armenian():stdgo._internal.unicode.RangeTable`](<#function-get_armenian>)

- [`function get_ascii_Hex_Digit():stdgo._internal.unicode.RangeTable`](<#function-get_ascii_hex_digit>)

- [`function get_avestan():stdgo._internal.unicode.RangeTable`](<#function-get_avestan>)

- [`function get_azeriCase():stdgo._internal.unicode.SpecialCase`](<#function-get_azericase>)

- [`function get_balinese():stdgo._internal.unicode.RangeTable`](<#function-get_balinese>)

- [`function get_bamum():stdgo._internal.unicode.RangeTable`](<#function-get_bamum>)

- [`function get_bassa_Vah():stdgo._internal.unicode.RangeTable`](<#function-get_bassa_vah>)

- [`function get_batak():stdgo._internal.unicode.RangeTable`](<#function-get_batak>)

- [`function get_bengali():stdgo._internal.unicode.RangeTable`](<#function-get_bengali>)

- [`function get_bhaiksuki():stdgo._internal.unicode.RangeTable`](<#function-get_bhaiksuki>)

- [`function get_bidi_Control():stdgo._internal.unicode.RangeTable`](<#function-get_bidi_control>)

- [`function get_bopomofo():stdgo._internal.unicode.RangeTable`](<#function-get_bopomofo>)

- [`function get_brahmi():stdgo._internal.unicode.RangeTable`](<#function-get_brahmi>)

- [`function get_braille():stdgo._internal.unicode.RangeTable`](<#function-get_braille>)

- [`function get_buginese():stdgo._internal.unicode.RangeTable`](<#function-get_buginese>)

- [`function get_buhid():stdgo._internal.unicode.RangeTable`](<#function-get_buhid>)

- [`function get_c():stdgo._internal.unicode.RangeTable`](<#function-get_c>)

- [`function get_canadian_Aboriginal():stdgo._internal.unicode.RangeTable`](<#function-get_canadian_aboriginal>)

- [`function get_carian():stdgo._internal.unicode.RangeTable`](<#function-get_carian>)

- [`function get_caseRanges():Array<stdgo._internal.unicode.CaseRange>`](<#function-get_caseranges>)

- [`function get_categories():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-get_categories>)

- [`function get_caucasian_Albanian():stdgo._internal.unicode.RangeTable`](<#function-get_caucasian_albanian>)

- [`function get_cc():stdgo._internal.unicode.RangeTable`](<#function-get_cc>)

- [`function get_cf():stdgo._internal.unicode.RangeTable`](<#function-get_cf>)

- [`function get_chakma():stdgo._internal.unicode.RangeTable`](<#function-get_chakma>)

- [`function get_cham():stdgo._internal.unicode.RangeTable`](<#function-get_cham>)

- [`function get_cherokee():stdgo._internal.unicode.RangeTable`](<#function-get_cherokee>)

- [`function get_chorasmian():stdgo._internal.unicode.RangeTable`](<#function-get_chorasmian>)

- [`function get_co():stdgo._internal.unicode.RangeTable`](<#function-get_co>)

- [`function get_common():stdgo._internal.unicode.RangeTable`](<#function-get_common>)

- [`function get_coptic():stdgo._internal.unicode.RangeTable`](<#function-get_coptic>)

- [`function get_cs():stdgo._internal.unicode.RangeTable`](<#function-get_cs>)

- [`function get_cuneiform():stdgo._internal.unicode.RangeTable`](<#function-get_cuneiform>)

- [`function get_cypriot():stdgo._internal.unicode.RangeTable`](<#function-get_cypriot>)

- [`function get_cypro_Minoan():stdgo._internal.unicode.RangeTable`](<#function-get_cypro_minoan>)

- [`function get_cyrillic():stdgo._internal.unicode.RangeTable`](<#function-get_cyrillic>)

- [`function get_dash():stdgo._internal.unicode.RangeTable`](<#function-get_dash>)

- [`function get_deprecated():stdgo._internal.unicode.RangeTable`](<#function-get_deprecated>)

- [`function get_deseret():stdgo._internal.unicode.RangeTable`](<#function-get_deseret>)

- [`function get_devanagari():stdgo._internal.unicode.RangeTable`](<#function-get_devanagari>)

- [`function get_diacritic():stdgo._internal.unicode.RangeTable`](<#function-get_diacritic>)

- [`function get_digit():stdgo._internal.unicode.RangeTable`](<#function-get_digit>)

- [`function get_dives_Akuru():stdgo._internal.unicode.RangeTable`](<#function-get_dives_akuru>)

- [`function get_dogra():stdgo._internal.unicode.RangeTable`](<#function-get_dogra>)

- [`function get_duployan():stdgo._internal.unicode.RangeTable`](<#function-get_duployan>)

- [`function get_egyptian_Hieroglyphs():stdgo._internal.unicode.RangeTable`](<#function-get_egyptian_hieroglyphs>)

- [`function get_elbasan():stdgo._internal.unicode.RangeTable`](<#function-get_elbasan>)

- [`function get_elymaic():stdgo._internal.unicode.RangeTable`](<#function-get_elymaic>)

- [`function get_ethiopic():stdgo._internal.unicode.RangeTable`](<#function-get_ethiopic>)

- [`function get_extender():stdgo._internal.unicode.RangeTable`](<#function-get_extender>)

- [`function get_foldCategory():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-get_foldcategory>)

- [`function get_foldScript():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-get_foldscript>)

- [`function get_georgian():stdgo._internal.unicode.RangeTable`](<#function-get_georgian>)

- [`function get_glagolitic():stdgo._internal.unicode.RangeTable`](<#function-get_glagolitic>)

- [`function get_gothic():stdgo._internal.unicode.RangeTable`](<#function-get_gothic>)

- [`function get_grantha():stdgo._internal.unicode.RangeTable`](<#function-get_grantha>)

- [`function get_graphicRanges():Array<stdgo._internal.unicode.RangeTable>`](<#function-get_graphicranges>)

- [`function get_greek():stdgo._internal.unicode.RangeTable`](<#function-get_greek>)

- [`function get_gujarati():stdgo._internal.unicode.RangeTable`](<#function-get_gujarati>)

- [`function get_gunjala_Gondi():stdgo._internal.unicode.RangeTable`](<#function-get_gunjala_gondi>)

- [`function get_gurmukhi():stdgo._internal.unicode.RangeTable`](<#function-get_gurmukhi>)

- [`function get_han():stdgo._internal.unicode.RangeTable`](<#function-get_han>)

- [`function get_hangul():stdgo._internal.unicode.RangeTable`](<#function-get_hangul>)

- [`function get_hanifi_Rohingya():stdgo._internal.unicode.RangeTable`](<#function-get_hanifi_rohingya>)

- [`function get_hanunoo():stdgo._internal.unicode.RangeTable`](<#function-get_hanunoo>)

- [`function get_hatran():stdgo._internal.unicode.RangeTable`](<#function-get_hatran>)

- [`function get_hebrew():stdgo._internal.unicode.RangeTable`](<#function-get_hebrew>)

- [`function get_hex_Digit():stdgo._internal.unicode.RangeTable`](<#function-get_hex_digit>)

- [`function get_hiragana():stdgo._internal.unicode.RangeTable`](<#function-get_hiragana>)

- [`function get_hyphen():stdgo._internal.unicode.RangeTable`](<#function-get_hyphen>)

- [`function get_ideographic():stdgo._internal.unicode.RangeTable`](<#function-get_ideographic>)

- [`function get_ids_Binary_Operator():stdgo._internal.unicode.RangeTable`](<#function-get_ids_binary_operator>)

- [`function get_ids_Trinary_Operator():stdgo._internal.unicode.RangeTable`](<#function-get_ids_trinary_operator>)

- [`function get_imperial_Aramaic():stdgo._internal.unicode.RangeTable`](<#function-get_imperial_aramaic>)

- [`function get_inherited():stdgo._internal.unicode.RangeTable`](<#function-get_inherited>)

- [`function get_inscriptional_Pahlavi():stdgo._internal.unicode.RangeTable`](<#function-get_inscriptional_pahlavi>)

- [`function get_inscriptional_Parthian():stdgo._internal.unicode.RangeTable`](<#function-get_inscriptional_parthian>)

- [`function get_javanese():stdgo._internal.unicode.RangeTable`](<#function-get_javanese>)

- [`function get_join_Control():stdgo._internal.unicode.RangeTable`](<#function-get_join_control>)

- [`function get_kaithi():stdgo._internal.unicode.RangeTable`](<#function-get_kaithi>)

- [`function get_kannada():stdgo._internal.unicode.RangeTable`](<#function-get_kannada>)

- [`function get_katakana():stdgo._internal.unicode.RangeTable`](<#function-get_katakana>)

- [`function get_kawi():stdgo._internal.unicode.RangeTable`](<#function-get_kawi>)

- [`function get_kayah_Li():stdgo._internal.unicode.RangeTable`](<#function-get_kayah_li>)

- [`function get_kharoshthi():stdgo._internal.unicode.RangeTable`](<#function-get_kharoshthi>)

- [`function get_khitan_Small_Script():stdgo._internal.unicode.RangeTable`](<#function-get_khitan_small_script>)

- [`function get_khmer():stdgo._internal.unicode.RangeTable`](<#function-get_khmer>)

- [`function get_khojki():stdgo._internal.unicode.RangeTable`](<#function-get_khojki>)

- [`function get_khudawadi():stdgo._internal.unicode.RangeTable`](<#function-get_khudawadi>)

- [`function get_l():stdgo._internal.unicode.RangeTable`](<#function-get_l>)

- [`function get_lao():stdgo._internal.unicode.RangeTable`](<#function-get_lao>)

- [`function get_latin():stdgo._internal.unicode.RangeTable`](<#function-get_latin>)

- [`function get_lepcha():stdgo._internal.unicode.RangeTable`](<#function-get_lepcha>)

- [`function get_letter():stdgo._internal.unicode.RangeTable`](<#function-get_letter>)

- [`function get_limbu():stdgo._internal.unicode.RangeTable`](<#function-get_limbu>)

- [`function get_linear_A():stdgo._internal.unicode.RangeTable`](<#function-get_linear_a>)

- [`function get_linear_B():stdgo._internal.unicode.RangeTable`](<#function-get_linear_b>)

- [`function get_lisu():stdgo._internal.unicode.RangeTable`](<#function-get_lisu>)

- [`function get_ll():stdgo._internal.unicode.RangeTable`](<#function-get_ll>)

- [`function get_lm():stdgo._internal.unicode.RangeTable`](<#function-get_lm>)

- [`function get_lo():stdgo._internal.unicode.RangeTable`](<#function-get_lo>)

- [`function get_logical_Order_Exception():stdgo._internal.unicode.RangeTable`](<#function-get_logical_order_exception>)

- [`function get_lower():stdgo._internal.unicode.RangeTable`](<#function-get_lower>)

- [`function get_lt():stdgo._internal.unicode.RangeTable`](<#function-get_lt>)

- [`function get_lu():stdgo._internal.unicode.RangeTable`](<#function-get_lu>)

- [`function get_lycian():stdgo._internal.unicode.RangeTable`](<#function-get_lycian>)

- [`function get_lydian():stdgo._internal.unicode.RangeTable`](<#function-get_lydian>)

- [`function get_m():stdgo._internal.unicode.RangeTable`](<#function-get_m>)

- [`function get_mahajani():stdgo._internal.unicode.RangeTable`](<#function-get_mahajani>)

- [`function get_makasar():stdgo._internal.unicode.RangeTable`](<#function-get_makasar>)

- [`function get_malayalam():stdgo._internal.unicode.RangeTable`](<#function-get_malayalam>)

- [`function get_mandaic():stdgo._internal.unicode.RangeTable`](<#function-get_mandaic>)

- [`function get_manichaean():stdgo._internal.unicode.RangeTable`](<#function-get_manichaean>)

- [`function get_marchen():stdgo._internal.unicode.RangeTable`](<#function-get_marchen>)

- [`function get_mark():stdgo._internal.unicode.RangeTable`](<#function-get_mark>)

- [`function get_masaram_Gondi():stdgo._internal.unicode.RangeTable`](<#function-get_masaram_gondi>)

- [`function get_mc():stdgo._internal.unicode.RangeTable`](<#function-get_mc>)

- [`function get_me():stdgo._internal.unicode.RangeTable`](<#function-get_me>)

- [`function get_medefaidrin():stdgo._internal.unicode.RangeTable`](<#function-get_medefaidrin>)

- [`function get_meetei_Mayek():stdgo._internal.unicode.RangeTable`](<#function-get_meetei_mayek>)

- [`function get_mende_Kikakui():stdgo._internal.unicode.RangeTable`](<#function-get_mende_kikakui>)

- [`function get_meroitic_Cursive():stdgo._internal.unicode.RangeTable`](<#function-get_meroitic_cursive>)

- [`function get_meroitic_Hieroglyphs():stdgo._internal.unicode.RangeTable`](<#function-get_meroitic_hieroglyphs>)

- [`function get_miao():stdgo._internal.unicode.RangeTable`](<#function-get_miao>)

- [`function get_mn():stdgo._internal.unicode.RangeTable`](<#function-get_mn>)

- [`function get_modi():stdgo._internal.unicode.RangeTable`](<#function-get_modi>)

- [`function get_mongolian():stdgo._internal.unicode.RangeTable`](<#function-get_mongolian>)

- [`function get_mro():stdgo._internal.unicode.RangeTable`](<#function-get_mro>)

- [`function get_multani():stdgo._internal.unicode.RangeTable`](<#function-get_multani>)

- [`function get_myanmar():stdgo._internal.unicode.RangeTable`](<#function-get_myanmar>)

- [`function get_n():stdgo._internal.unicode.RangeTable`](<#function-get_n>)

- [`function get_nabataean():stdgo._internal.unicode.RangeTable`](<#function-get_nabataean>)

- [`function get_nag_Mundari():stdgo._internal.unicode.RangeTable`](<#function-get_nag_mundari>)

- [`function get_nandinagari():stdgo._internal.unicode.RangeTable`](<#function-get_nandinagari>)

- [`function get_nd():stdgo._internal.unicode.RangeTable`](<#function-get_nd>)

- [`function get_new_Tai_Lue():stdgo._internal.unicode.RangeTable`](<#function-get_new_tai_lue>)

- [`function get_newa():stdgo._internal.unicode.RangeTable`](<#function-get_newa>)

- [`function get_nko():stdgo._internal.unicode.RangeTable`](<#function-get_nko>)

- [`function get_nl():stdgo._internal.unicode.RangeTable`](<#function-get_nl>)

- [`function get_no():stdgo._internal.unicode.RangeTable`](<#function-get_no>)

- [`function get_noncharacter_Code_Point():stdgo._internal.unicode.RangeTable`](<#function-get_noncharacter_code_point>)

- [`function get_number():stdgo._internal.unicode.RangeTable`](<#function-get_number>)

- [`function get_nushu():stdgo._internal.unicode.RangeTable`](<#function-get_nushu>)

- [`function get_nyiakeng_Puachue_Hmong():stdgo._internal.unicode.RangeTable`](<#function-get_nyiakeng_puachue_hmong>)

- [`function get_ogham():stdgo._internal.unicode.RangeTable`](<#function-get_ogham>)

- [`function get_ol_Chiki():stdgo._internal.unicode.RangeTable`](<#function-get_ol_chiki>)

- [`function get_old_Hungarian():stdgo._internal.unicode.RangeTable`](<#function-get_old_hungarian>)

- [`function get_old_Italic():stdgo._internal.unicode.RangeTable`](<#function-get_old_italic>)

- [`function get_old_North_Arabian():stdgo._internal.unicode.RangeTable`](<#function-get_old_north_arabian>)

- [`function get_old_Permic():stdgo._internal.unicode.RangeTable`](<#function-get_old_permic>)

- [`function get_old_Persian():stdgo._internal.unicode.RangeTable`](<#function-get_old_persian>)

- [`function get_old_Sogdian():stdgo._internal.unicode.RangeTable`](<#function-get_old_sogdian>)

- [`function get_old_South_Arabian():stdgo._internal.unicode.RangeTable`](<#function-get_old_south_arabian>)

- [`function get_old_Turkic():stdgo._internal.unicode.RangeTable`](<#function-get_old_turkic>)

- [`function get_old_Uyghur():stdgo._internal.unicode.RangeTable`](<#function-get_old_uyghur>)

- [`function get_oriya():stdgo._internal.unicode.RangeTable`](<#function-get_oriya>)

- [`function get_osage():stdgo._internal.unicode.RangeTable`](<#function-get_osage>)

- [`function get_osmanya():stdgo._internal.unicode.RangeTable`](<#function-get_osmanya>)

- [`function get_other():stdgo._internal.unicode.RangeTable`](<#function-get_other>)

- [`function get_other_Alphabetic():stdgo._internal.unicode.RangeTable`](<#function-get_other_alphabetic>)

- [`function get_other_Default_Ignorable_Code_Point():stdgo._internal.unicode.RangeTable`](<#function-get_other_default_ignorable_code_point>)

- [`function get_other_Grapheme_Extend():stdgo._internal.unicode.RangeTable`](<#function-get_other_grapheme_extend>)

- [`function get_other_ID_Continue():stdgo._internal.unicode.RangeTable`](<#function-get_other_id_continue>)

- [`function get_other_ID_Start():stdgo._internal.unicode.RangeTable`](<#function-get_other_id_start>)

- [`function get_other_Lowercase():stdgo._internal.unicode.RangeTable`](<#function-get_other_lowercase>)

- [`function get_other_Math():stdgo._internal.unicode.RangeTable`](<#function-get_other_math>)

- [`function get_other_Uppercase():stdgo._internal.unicode.RangeTable`](<#function-get_other_uppercase>)

- [`function get_p():stdgo._internal.unicode.RangeTable`](<#function-get_p>)

- [`function get_pahawh_Hmong():stdgo._internal.unicode.RangeTable`](<#function-get_pahawh_hmong>)

- [`function get_palmyrene():stdgo._internal.unicode.RangeTable`](<#function-get_palmyrene>)

- [`function get_pattern_Syntax():stdgo._internal.unicode.RangeTable`](<#function-get_pattern_syntax>)

- [`function get_pattern_White_Space():stdgo._internal.unicode.RangeTable`](<#function-get_pattern_white_space>)

- [`function get_pau_Cin_Hau():stdgo._internal.unicode.RangeTable`](<#function-get_pau_cin_hau>)

- [`function get_pc():stdgo._internal.unicode.RangeTable`](<#function-get_pc>)

- [`function get_pd():stdgo._internal.unicode.RangeTable`](<#function-get_pd>)

- [`function get_pe():stdgo._internal.unicode.RangeTable`](<#function-get_pe>)

- [`function get_pf():stdgo._internal.unicode.RangeTable`](<#function-get_pf>)

- [`function get_phags_Pa():stdgo._internal.unicode.RangeTable`](<#function-get_phags_pa>)

- [`function get_phoenician():stdgo._internal.unicode.RangeTable`](<#function-get_phoenician>)

- [`function get_pi():stdgo._internal.unicode.RangeTable`](<#function-get_pi>)

- [`function get_po():stdgo._internal.unicode.RangeTable`](<#function-get_po>)

- [`function get_prepended_Concatenation_Mark():stdgo._internal.unicode.RangeTable`](<#function-get_prepended_concatenation_mark>)

- [`function get_printRanges():Array<stdgo._internal.unicode.RangeTable>`](<#function-get_printranges>)

- [`function get_properties():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-get_properties>)

- [`function get_ps():stdgo._internal.unicode.RangeTable`](<#function-get_ps>)

- [`function get_psalter_Pahlavi():stdgo._internal.unicode.RangeTable`](<#function-get_psalter_pahlavi>)

- [`function get_punct():stdgo._internal.unicode.RangeTable`](<#function-get_punct>)

- [`function get_quotation_Mark():stdgo._internal.unicode.RangeTable`](<#function-get_quotation_mark>)

- [`function get_radical():stdgo._internal.unicode.RangeTable`](<#function-get_radical>)

- [`function get_regional_Indicator():stdgo._internal.unicode.RangeTable`](<#function-get_regional_indicator>)

- [`function get_rejang():stdgo._internal.unicode.RangeTable`](<#function-get_rejang>)

- [`function get_runic():stdgo._internal.unicode.RangeTable`](<#function-get_runic>)

- [`function get_s():stdgo._internal.unicode.RangeTable`](<#function-get_s>)

- [`function get_samaritan():stdgo._internal.unicode.RangeTable`](<#function-get_samaritan>)

- [`function get_saurashtra():stdgo._internal.unicode.RangeTable`](<#function-get_saurashtra>)

- [`function get_sc():stdgo._internal.unicode.RangeTable`](<#function-get_sc>)

- [`function get_scripts():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-get_scripts>)

- [`function get_sentence_Terminal():stdgo._internal.unicode.RangeTable`](<#function-get_sentence_terminal>)

- [`function get_sharada():stdgo._internal.unicode.RangeTable`](<#function-get_sharada>)

- [`function get_shavian():stdgo._internal.unicode.RangeTable`](<#function-get_shavian>)

- [`function get_siddham():stdgo._internal.unicode.RangeTable`](<#function-get_siddham>)

- [`function get_signWriting():stdgo._internal.unicode.RangeTable`](<#function-get_signwriting>)

- [`function get_sinhala():stdgo._internal.unicode.RangeTable`](<#function-get_sinhala>)

- [`function get_sk():stdgo._internal.unicode.RangeTable`](<#function-get_sk>)

- [`function get_sm():stdgo._internal.unicode.RangeTable`](<#function-get_sm>)

- [`function get_so():stdgo._internal.unicode.RangeTable`](<#function-get_so>)

- [`function get_soft_Dotted():stdgo._internal.unicode.RangeTable`](<#function-get_soft_dotted>)

- [`function get_sogdian():stdgo._internal.unicode.RangeTable`](<#function-get_sogdian>)

- [`function get_sora_Sompeng():stdgo._internal.unicode.RangeTable`](<#function-get_sora_sompeng>)

- [`function get_soyombo():stdgo._internal.unicode.RangeTable`](<#function-get_soyombo>)

- [`function get_space():stdgo._internal.unicode.RangeTable`](<#function-get_space>)

- [`function get_sterm():stdgo._internal.unicode.RangeTable`](<#function-get_sterm>)

- [`function get_sundanese():stdgo._internal.unicode.RangeTable`](<#function-get_sundanese>)

- [`function get_syloti_Nagri():stdgo._internal.unicode.RangeTable`](<#function-get_syloti_nagri>)

- [`function get_symbol():stdgo._internal.unicode.RangeTable`](<#function-get_symbol>)

- [`function get_syriac():stdgo._internal.unicode.RangeTable`](<#function-get_syriac>)

- [`function get_tagalog():stdgo._internal.unicode.RangeTable`](<#function-get_tagalog>)

- [`function get_tagbanwa():stdgo._internal.unicode.RangeTable`](<#function-get_tagbanwa>)

- [`function get_tai_Le():stdgo._internal.unicode.RangeTable`](<#function-get_tai_le>)

- [`function get_tai_Tham():stdgo._internal.unicode.RangeTable`](<#function-get_tai_tham>)

- [`function get_tai_Viet():stdgo._internal.unicode.RangeTable`](<#function-get_tai_viet>)

- [`function get_takri():stdgo._internal.unicode.RangeTable`](<#function-get_takri>)

- [`function get_tamil():stdgo._internal.unicode.RangeTable`](<#function-get_tamil>)

- [`function get_tangsa():stdgo._internal.unicode.RangeTable`](<#function-get_tangsa>)

- [`function get_tangut():stdgo._internal.unicode.RangeTable`](<#function-get_tangut>)

- [`function get_telugu():stdgo._internal.unicode.RangeTable`](<#function-get_telugu>)

- [`function get_terminal_Punctuation():stdgo._internal.unicode.RangeTable`](<#function-get_terminal_punctuation>)

- [`function get_thaana():stdgo._internal.unicode.RangeTable`](<#function-get_thaana>)

- [`function get_thai():stdgo._internal.unicode.RangeTable`](<#function-get_thai>)

- [`function get_tibetan():stdgo._internal.unicode.RangeTable`](<#function-get_tibetan>)

- [`function get_tifinagh():stdgo._internal.unicode.RangeTable`](<#function-get_tifinagh>)

- [`function get_tirhuta():stdgo._internal.unicode.RangeTable`](<#function-get_tirhuta>)

- [`function get_title():stdgo._internal.unicode.RangeTable`](<#function-get_title>)

- [`function get_toto():stdgo._internal.unicode.RangeTable`](<#function-get_toto>)

- [`function get_turkishCase():stdgo._internal.unicode.SpecialCase`](<#function-get_turkishcase>)

- [`function get_ugaritic():stdgo._internal.unicode.RangeTable`](<#function-get_ugaritic>)

- [`function get_unified_Ideograph():stdgo._internal.unicode.RangeTable`](<#function-get_unified_ideograph>)

- [`function get_upper():stdgo._internal.unicode.RangeTable`](<#function-get_upper>)

- [`function get_vai():stdgo._internal.unicode.RangeTable`](<#function-get_vai>)

- [`function get_variation_Selector():stdgo._internal.unicode.RangeTable`](<#function-get_variation_selector>)

- [`function get_vithkuqi():stdgo._internal.unicode.RangeTable`](<#function-get_vithkuqi>)

- [`function get_wancho():stdgo._internal.unicode.RangeTable`](<#function-get_wancho>)

- [`function get_warang_Citi():stdgo._internal.unicode.RangeTable`](<#function-get_warang_citi>)

- [`function get_white_Space():stdgo._internal.unicode.RangeTable`](<#function-get_white_space>)

- [`function get_yezidi():stdgo._internal.unicode.RangeTable`](<#function-get_yezidi>)

- [`function get_yi():stdgo._internal.unicode.RangeTable`](<#function-get_yi>)

- [`function get_z():stdgo._internal.unicode.RangeTable`](<#function-get_z>)

- [`function get_zanabazar_Square():stdgo._internal.unicode.RangeTable`](<#function-get_zanabazar_square>)

- [`function get_zl():stdgo._internal.unicode.RangeTable`](<#function-get_zl>)

- [`function get_zp():stdgo._internal.unicode.RangeTable`](<#function-get_zp>)

- [`function get_zs():stdgo._internal.unicode.RangeTable`](<#function-get_zs>)

- [`function in_(r:Int, ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool`](<#function-in_>)

- [`function isControl(r:Int):Bool`](<#function-iscontrol>)

- [`function isDigit(r:Int):Bool`](<#function-isdigit>)

- [`function isGraphic(r:Int):Bool`](<#function-isgraphic>)

- [`function isLetter(r:Int):Bool`](<#function-isletter>)

- [`function isLower(r:Int):Bool`](<#function-islower>)

- [`function isMark(r:Int):Bool`](<#function-ismark>)

- [`function isNumber(r:Int):Bool`](<#function-isnumber>)

- [`function isOneOf(ranges:Array<stdgo.unicode.RangeTable>, r:Int):Bool`](<#function-isoneof>)

- [`function isPrint(r:Int):Bool`](<#function-isprint>)

- [`function isPunct(r:Int):Bool`](<#function-ispunct>)

- [`function isSpace(r:Int):Bool`](<#function-isspace>)

- [`function isSymbol(r:Int):Bool`](<#function-issymbol>)

- [`function isTitle(r:Int):Bool`](<#function-istitle>)

- [`function isUpper(r:Int):Bool`](<#function-isupper>)

- [`function is_(rangeTab:stdgo.unicode.RangeTable, r:Int):Bool`](<#function-is_>)

- [`function set_adlam(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_adlam>)

- [`function set_ahom(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ahom>)

- [`function set_anatolian_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_anatolian_hieroglyphs>)

- [`function set_arabic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_arabic>)

- [`function set_armenian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_armenian>)

- [`function set_ascii_Hex_Digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ascii_hex_digit>)

- [`function set_avestan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_avestan>)

- [`function set_azeriCase(v:stdgo._internal.unicode.SpecialCase):stdgo._internal.unicode.SpecialCase`](<#function-set_azericase>)

- [`function set_balinese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_balinese>)

- [`function set_bamum(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bamum>)

- [`function set_bassa_Vah(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bassa_vah>)

- [`function set_batak(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_batak>)

- [`function set_bengali(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bengali>)

- [`function set_bhaiksuki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bhaiksuki>)

- [`function set_bidi_Control(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bidi_control>)

- [`function set_bopomofo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_bopomofo>)

- [`function set_brahmi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_brahmi>)

- [`function set_braille(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_braille>)

- [`function set_buginese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_buginese>)

- [`function set_buhid(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_buhid>)

- [`function set_c(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_c>)

- [`function set_canadian_Aboriginal(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_canadian_aboriginal>)

- [`function set_carian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_carian>)

- [`function set_caseRanges(v:Array<stdgo._internal.unicode.CaseRange>):Array<stdgo._internal.unicode.CaseRange>`](<#function-set_caseranges>)

- [`function set_categories(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-set_categories>)

- [`function set_caucasian_Albanian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_caucasian_albanian>)

- [`function set_cc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cc>)

- [`function set_cf(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cf>)

- [`function set_chakma(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_chakma>)

- [`function set_cham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cham>)

- [`function set_cherokee(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cherokee>)

- [`function set_chorasmian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_chorasmian>)

- [`function set_co(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_co>)

- [`function set_common(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_common>)

- [`function set_coptic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_coptic>)

- [`function set_cs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cs>)

- [`function set_cuneiform(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cuneiform>)

- [`function set_cypriot(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cypriot>)

- [`function set_cypro_Minoan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cypro_minoan>)

- [`function set_cyrillic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_cyrillic>)

- [`function set_dash(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_dash>)

- [`function set_deprecated(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_deprecated>)

- [`function set_deseret(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_deseret>)

- [`function set_devanagari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_devanagari>)

- [`function set_diacritic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_diacritic>)

- [`function set_digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_digit>)

- [`function set_dives_Akuru(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_dives_akuru>)

- [`function set_dogra(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_dogra>)

- [`function set_duployan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_duployan>)

- [`function set_egyptian_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_egyptian_hieroglyphs>)

- [`function set_elbasan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_elbasan>)

- [`function set_elymaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_elymaic>)

- [`function set_ethiopic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ethiopic>)

- [`function set_extender(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_extender>)

- [`function set_foldCategory(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-set_foldcategory>)

- [`function set_foldScript(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-set_foldscript>)

- [`function set_georgian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_georgian>)

- [`function set_glagolitic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_glagolitic>)

- [`function set_gothic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_gothic>)

- [`function set_grantha(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_grantha>)

- [`function set_graphicRanges(v:Array<stdgo._internal.unicode.RangeTable>):Array<stdgo._internal.unicode.RangeTable>`](<#function-set_graphicranges>)

- [`function set_greek(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_greek>)

- [`function set_gujarati(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_gujarati>)

- [`function set_gunjala_Gondi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_gunjala_gondi>)

- [`function set_gurmukhi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_gurmukhi>)

- [`function set_han(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_han>)

- [`function set_hangul(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hangul>)

- [`function set_hanifi_Rohingya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hanifi_rohingya>)

- [`function set_hanunoo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hanunoo>)

- [`function set_hatran(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hatran>)

- [`function set_hebrew(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hebrew>)

- [`function set_hex_Digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hex_digit>)

- [`function set_hiragana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hiragana>)

- [`function set_hyphen(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_hyphen>)

- [`function set_ideographic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ideographic>)

- [`function set_ids_Binary_Operator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ids_binary_operator>)

- [`function set_ids_Trinary_Operator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ids_trinary_operator>)

- [`function set_imperial_Aramaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_imperial_aramaic>)

- [`function set_inherited(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_inherited>)

- [`function set_inscriptional_Pahlavi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_inscriptional_pahlavi>)

- [`function set_inscriptional_Parthian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_inscriptional_parthian>)

- [`function set_javanese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_javanese>)

- [`function set_join_Control(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_join_control>)

- [`function set_kaithi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_kaithi>)

- [`function set_kannada(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_kannada>)

- [`function set_katakana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_katakana>)

- [`function set_kawi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_kawi>)

- [`function set_kayah_Li(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_kayah_li>)

- [`function set_kharoshthi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_kharoshthi>)

- [`function set_khitan_Small_Script(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_khitan_small_script>)

- [`function set_khmer(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_khmer>)

- [`function set_khojki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_khojki>)

- [`function set_khudawadi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_khudawadi>)

- [`function set_l(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_l>)

- [`function set_lao(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lao>)

- [`function set_latin(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_latin>)

- [`function set_lepcha(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lepcha>)

- [`function set_letter(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_letter>)

- [`function set_limbu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_limbu>)

- [`function set_linear_A(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_linear_a>)

- [`function set_linear_B(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_linear_b>)

- [`function set_lisu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lisu>)

- [`function set_ll(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ll>)

- [`function set_lm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lm>)

- [`function set_lo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lo>)

- [`function set_logical_Order_Exception(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_logical_order_exception>)

- [`function set_lower(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lower>)

- [`function set_lt(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lt>)

- [`function set_lu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lu>)

- [`function set_lycian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lycian>)

- [`function set_lydian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_lydian>)

- [`function set_m(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_m>)

- [`function set_mahajani(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mahajani>)

- [`function set_makasar(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_makasar>)

- [`function set_malayalam(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_malayalam>)

- [`function set_mandaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mandaic>)

- [`function set_manichaean(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_manichaean>)

- [`function set_marchen(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_marchen>)

- [`function set_mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mark>)

- [`function set_masaram_Gondi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_masaram_gondi>)

- [`function set_mc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mc>)

- [`function set_me(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_me>)

- [`function set_medefaidrin(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_medefaidrin>)

- [`function set_meetei_Mayek(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_meetei_mayek>)

- [`function set_mende_Kikakui(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mende_kikakui>)

- [`function set_meroitic_Cursive(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_meroitic_cursive>)

- [`function set_meroitic_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_meroitic_hieroglyphs>)

- [`function set_miao(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_miao>)

- [`function set_mn(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mn>)

- [`function set_modi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_modi>)

- [`function set_mongolian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mongolian>)

- [`function set_mro(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_mro>)

- [`function set_multani(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_multani>)

- [`function set_myanmar(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_myanmar>)

- [`function set_n(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_n>)

- [`function set_nabataean(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nabataean>)

- [`function set_nag_Mundari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nag_mundari>)

- [`function set_nandinagari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nandinagari>)

- [`function set_nd(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nd>)

- [`function set_new_Tai_Lue(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_new_tai_lue>)

- [`function set_newa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_newa>)

- [`function set_nko(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nko>)

- [`function set_nl(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nl>)

- [`function set_no(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_no>)

- [`function set_noncharacter_Code_Point(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_noncharacter_code_point>)

- [`function set_number(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_number>)

- [`function set_nushu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nushu>)

- [`function set_nyiakeng_Puachue_Hmong(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_nyiakeng_puachue_hmong>)

- [`function set_ogham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ogham>)

- [`function set_ol_Chiki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ol_chiki>)

- [`function set_old_Hungarian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_hungarian>)

- [`function set_old_Italic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_italic>)

- [`function set_old_North_Arabian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_north_arabian>)

- [`function set_old_Permic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_permic>)

- [`function set_old_Persian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_persian>)

- [`function set_old_Sogdian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_sogdian>)

- [`function set_old_South_Arabian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_south_arabian>)

- [`function set_old_Turkic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_turkic>)

- [`function set_old_Uyghur(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_old_uyghur>)

- [`function set_oriya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_oriya>)

- [`function set_osage(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_osage>)

- [`function set_osmanya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_osmanya>)

- [`function set_other(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other>)

- [`function set_other_Alphabetic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_alphabetic>)

- [`function set_other_Default_Ignorable_Code_Point(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_default_ignorable_code_point>)

- [`function set_other_Grapheme_Extend(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_grapheme_extend>)

- [`function set_other_ID_Continue(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_id_continue>)

- [`function set_other_ID_Start(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_id_start>)

- [`function set_other_Lowercase(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_lowercase>)

- [`function set_other_Math(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_math>)

- [`function set_other_Uppercase(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_other_uppercase>)

- [`function set_p(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_p>)

- [`function set_pahawh_Hmong(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pahawh_hmong>)

- [`function set_palmyrene(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_palmyrene>)

- [`function set_pattern_Syntax(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pattern_syntax>)

- [`function set_pattern_White_Space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pattern_white_space>)

- [`function set_pau_Cin_Hau(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pau_cin_hau>)

- [`function set_pc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pc>)

- [`function set_pd(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pd>)

- [`function set_pe(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pe>)

- [`function set_pf(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pf>)

- [`function set_phags_Pa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_phags_pa>)

- [`function set_phoenician(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_phoenician>)

- [`function set_pi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_pi>)

- [`function set_po(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_po>)

- [`function set_prepended_Concatenation_Mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_prepended_concatenation_mark>)

- [`function set_printRanges(v:Array<stdgo._internal.unicode.RangeTable>):Array<stdgo._internal.unicode.RangeTable>`](<#function-set_printranges>)

- [`function set_properties(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-set_properties>)

- [`function set_ps(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ps>)

- [`function set_psalter_Pahlavi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_psalter_pahlavi>)

- [`function set_punct(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_punct>)

- [`function set_quotation_Mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_quotation_mark>)

- [`function set_radical(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_radical>)

- [`function set_regional_Indicator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_regional_indicator>)

- [`function set_rejang(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_rejang>)

- [`function set_runic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_runic>)

- [`function set_s(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_s>)

- [`function set_samaritan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_samaritan>)

- [`function set_saurashtra(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_saurashtra>)

- [`function set_sc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sc>)

- [`function set_scripts(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>`](<#function-set_scripts>)

- [`function set_sentence_Terminal(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sentence_terminal>)

- [`function set_sharada(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sharada>)

- [`function set_shavian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_shavian>)

- [`function set_siddham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_siddham>)

- [`function set_signWriting(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_signwriting>)

- [`function set_sinhala(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sinhala>)

- [`function set_sk(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sk>)

- [`function set_sm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sm>)

- [`function set_so(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_so>)

- [`function set_soft_Dotted(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_soft_dotted>)

- [`function set_sogdian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sogdian>)

- [`function set_sora_Sompeng(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sora_sompeng>)

- [`function set_soyombo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_soyombo>)

- [`function set_space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_space>)

- [`function set_sterm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sterm>)

- [`function set_sundanese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_sundanese>)

- [`function set_syloti_Nagri(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_syloti_nagri>)

- [`function set_symbol(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_symbol>)

- [`function set_syriac(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_syriac>)

- [`function set_tagalog(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tagalog>)

- [`function set_tagbanwa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tagbanwa>)

- [`function set_tai_Le(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tai_le>)

- [`function set_tai_Tham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tai_tham>)

- [`function set_tai_Viet(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tai_viet>)

- [`function set_takri(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_takri>)

- [`function set_tamil(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tamil>)

- [`function set_tangsa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tangsa>)

- [`function set_tangut(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tangut>)

- [`function set_telugu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_telugu>)

- [`function set_terminal_Punctuation(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_terminal_punctuation>)

- [`function set_thaana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_thaana>)

- [`function set_thai(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_thai>)

- [`function set_tibetan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tibetan>)

- [`function set_tifinagh(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tifinagh>)

- [`function set_tirhuta(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_tirhuta>)

- [`function set_title(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_title>)

- [`function set_toto(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_toto>)

- [`function set_turkishCase(v:stdgo._internal.unicode.SpecialCase):stdgo._internal.unicode.SpecialCase`](<#function-set_turkishcase>)

- [`function set_ugaritic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_ugaritic>)

- [`function set_unified_Ideograph(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_unified_ideograph>)

- [`function set_upper(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_upper>)

- [`function set_vai(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_vai>)

- [`function set_variation_Selector(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_variation_selector>)

- [`function set_vithkuqi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_vithkuqi>)

- [`function set_wancho(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_wancho>)

- [`function set_warang_Citi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_warang_citi>)

- [`function set_white_Space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_white_space>)

- [`function set_yezidi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_yezidi>)

- [`function set_yi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_yi>)

- [`function set_z(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_z>)

- [`function set_zanabazar_Square(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_zanabazar_square>)

- [`function set_zl(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_zl>)

- [`function set_zp(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_zp>)

- [`function set_zs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable`](<#function-set_zs>)

- [`function simpleFold(r:Int):Int`](<#function-simplefold>)

- [`function to(_case:Int, r:Int):Int`](<#function-to>)

- [`function toLower(r:Int):Int`](<#function-tolower>)

- [`function toTitle(r:Int):Int`](<#function-totitle>)

- [`function toUpper(r:Int):Int`](<#function-toupper>)

- [typedef CaseRange](<#typedef-caserange>)

- [typedef Range16](<#typedef-range16>)

- [typedef Range32](<#typedef-range32>)

- [typedef RangeTable](<#typedef-rangetable>)

- [typedef SpecialCase](<#typedef-specialcase>)

- [typedef SpecialCase\_asInterface](<#typedef-specialcase_asinterface>)

- [typedef SpecialCase\_static\_extension](<#typedef-specialcase_static_extension>)

- [typedef T\_d](<#typedef-t_d>)

- [typedef T\_foldPair](<#typedef-t_foldpair>)

# Constants


```haxe
import stdgo.unicode.Unicode
```


```haxe
final lowerCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.lowerCase
```


```haxe
final maxASCII:Int = stdgo._internal.unicode.Unicode.maxASCII
```


```haxe
final maxCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.maxCase
```


```haxe
final maxLatin1:Int = stdgo._internal.unicode.Unicode.maxLatin1
```


```haxe
final maxRune:Int = stdgo._internal.unicode.Unicode.maxRune
```


```haxe
final replacementChar:Int = stdgo._internal.unicode.Unicode.replacementChar
```


```haxe
final titleCase:stdgo.GoUInt64 = stdgo._internal.unicode.Unicode.titleCase
```


```haxe
final upperCase:haxe.UInt64 = stdgo._internal.unicode.Unicode.upperCase
```


```haxe
final upperLower:Int = stdgo._internal.unicode.Unicode.upperLower
```


```haxe
final version:String = stdgo._internal.unicode.Unicode.version
```


# Variables


```haxe
import stdgo.unicode.Unicode
```


```haxe
var adlam:stdgo._internal.unicode.RangeTable
```


```haxe
var ahom:stdgo._internal.unicode.RangeTable
```


```haxe
var anatolian_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var arabic:stdgo._internal.unicode.RangeTable
```


```haxe
var armenian:stdgo._internal.unicode.RangeTable
```


```haxe
var ascii_Hex_Digit:stdgo._internal.unicode.RangeTable
```


```haxe
var avestan:stdgo._internal.unicode.RangeTable
```


```haxe
var azeriCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var balinese:stdgo._internal.unicode.RangeTable
```


```haxe
var bamum:stdgo._internal.unicode.RangeTable
```


```haxe
var bassa_Vah:stdgo._internal.unicode.RangeTable
```


```haxe
var batak:stdgo._internal.unicode.RangeTable
```


```haxe
var bengali:stdgo._internal.unicode.RangeTable
```


```haxe
var bhaiksuki:stdgo._internal.unicode.RangeTable
```


```haxe
var bidi_Control:stdgo._internal.unicode.RangeTable
```


```haxe
var bopomofo:stdgo._internal.unicode.RangeTable
```


```haxe
var brahmi:stdgo._internal.unicode.RangeTable
```


```haxe
var braille:stdgo._internal.unicode.RangeTable
```


```haxe
var buginese:stdgo._internal.unicode.RangeTable
```


```haxe
var buhid:stdgo._internal.unicode.RangeTable
```


```haxe
var c:stdgo._internal.unicode.RangeTable
```


```haxe
var canadian_Aboriginal:stdgo._internal.unicode.RangeTable
```


```haxe
var carian:stdgo._internal.unicode.RangeTable
```


```haxe
var caseRanges:Array<stdgo._internal.unicode.CaseRange>
```


```haxe
var categories:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var caucasian_Albanian:stdgo._internal.unicode.RangeTable
```


```haxe
var cc:stdgo._internal.unicode.RangeTable
```


```haxe
var cf:stdgo._internal.unicode.RangeTable
```


```haxe
var chakma:stdgo._internal.unicode.RangeTable
```


```haxe
var cham:stdgo._internal.unicode.RangeTable
```


```haxe
var cherokee:stdgo._internal.unicode.RangeTable
```


```haxe
var chorasmian:stdgo._internal.unicode.RangeTable
```


```haxe
var co:stdgo._internal.unicode.RangeTable
```


```haxe
var common:stdgo._internal.unicode.RangeTable
```


```haxe
var coptic:stdgo._internal.unicode.RangeTable
```


```haxe
var cs:stdgo._internal.unicode.RangeTable
```


```haxe
var cuneiform:stdgo._internal.unicode.RangeTable
```


```haxe
var cypriot:stdgo._internal.unicode.RangeTable
```


```haxe
var cypro_Minoan:stdgo._internal.unicode.RangeTable
```


```haxe
var cyrillic:stdgo._internal.unicode.RangeTable
```


```haxe
var dash:stdgo._internal.unicode.RangeTable
```


```haxe
var deprecated:stdgo._internal.unicode.RangeTable
```


```haxe
var deseret:stdgo._internal.unicode.RangeTable
```


```haxe
var devanagari:stdgo._internal.unicode.RangeTable
```


```haxe
var diacritic:stdgo._internal.unicode.RangeTable
```


```haxe
var digit:stdgo._internal.unicode.RangeTable
```


```haxe
var dives_Akuru:stdgo._internal.unicode.RangeTable
```


```haxe
var dogra:stdgo._internal.unicode.RangeTable
```


```haxe
var duployan:stdgo._internal.unicode.RangeTable
```


```haxe
var egyptian_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var elbasan:stdgo._internal.unicode.RangeTable
```


```haxe
var elymaic:stdgo._internal.unicode.RangeTable
```


```haxe
var ethiopic:stdgo._internal.unicode.RangeTable
```


```haxe
var extender:stdgo._internal.unicode.RangeTable
```


```haxe
var foldCategory:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var foldScript:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var georgian:stdgo._internal.unicode.RangeTable
```


```haxe
var glagolitic:stdgo._internal.unicode.RangeTable
```


```haxe
var gothic:stdgo._internal.unicode.RangeTable
```


```haxe
var grantha:stdgo._internal.unicode.RangeTable
```


```haxe
var graphicRanges:Array<stdgo._internal.unicode.RangeTable>
```


```haxe
var greek:stdgo._internal.unicode.RangeTable
```


```haxe
var gujarati:stdgo._internal.unicode.RangeTable
```


```haxe
var gunjala_Gondi:stdgo._internal.unicode.RangeTable
```


```haxe
var gurmukhi:stdgo._internal.unicode.RangeTable
```


```haxe
var han:stdgo._internal.unicode.RangeTable
```


```haxe
var hangul:stdgo._internal.unicode.RangeTable
```


```haxe
var hanifi_Rohingya:stdgo._internal.unicode.RangeTable
```


```haxe
var hanunoo:stdgo._internal.unicode.RangeTable
```


```haxe
var hatran:stdgo._internal.unicode.RangeTable
```


```haxe
var hebrew:stdgo._internal.unicode.RangeTable
```


```haxe
var hex_Digit:stdgo._internal.unicode.RangeTable
```


```haxe
var hiragana:stdgo._internal.unicode.RangeTable
```


```haxe
var hyphen:stdgo._internal.unicode.RangeTable
```


```haxe
var ideographic:stdgo._internal.unicode.RangeTable
```


```haxe
var ids_Binary_Operator:stdgo._internal.unicode.RangeTable
```


```haxe
var ids_Trinary_Operator:stdgo._internal.unicode.RangeTable
```


```haxe
var imperial_Aramaic:stdgo._internal.unicode.RangeTable
```


```haxe
var inherited:stdgo._internal.unicode.RangeTable
```


```haxe
var inscriptional_Pahlavi:stdgo._internal.unicode.RangeTable
```


```haxe
var inscriptional_Parthian:stdgo._internal.unicode.RangeTable
```


```haxe
var javanese:stdgo._internal.unicode.RangeTable
```


```haxe
var join_Control:stdgo._internal.unicode.RangeTable
```


```haxe
var kaithi:stdgo._internal.unicode.RangeTable
```


```haxe
var kannada:stdgo._internal.unicode.RangeTable
```


```haxe
var katakana:stdgo._internal.unicode.RangeTable
```


```haxe
var kawi:stdgo._internal.unicode.RangeTable
```


```haxe
var kayah_Li:stdgo._internal.unicode.RangeTable
```


```haxe
var kharoshthi:stdgo._internal.unicode.RangeTable
```


```haxe
var khitan_Small_Script:stdgo._internal.unicode.RangeTable
```


```haxe
var khmer:stdgo._internal.unicode.RangeTable
```


```haxe
var khojki:stdgo._internal.unicode.RangeTable
```


```haxe
var khudawadi:stdgo._internal.unicode.RangeTable
```


```haxe
var l:stdgo._internal.unicode.RangeTable
```


```haxe
var lao:stdgo._internal.unicode.RangeTable
```


```haxe
var latin:stdgo._internal.unicode.RangeTable
```


```haxe
var lepcha:stdgo._internal.unicode.RangeTable
```


```haxe
var letter:stdgo._internal.unicode.RangeTable
```


```haxe
var limbu:stdgo._internal.unicode.RangeTable
```


```haxe
var linear_A:stdgo._internal.unicode.RangeTable
```


```haxe
var linear_B:stdgo._internal.unicode.RangeTable
```


```haxe
var lisu:stdgo._internal.unicode.RangeTable
```


```haxe
var ll:stdgo._internal.unicode.RangeTable
```


```haxe
var lm:stdgo._internal.unicode.RangeTable
```


```haxe
var lo:stdgo._internal.unicode.RangeTable
```


```haxe
var logical_Order_Exception:stdgo._internal.unicode.RangeTable
```


```haxe
var lower:stdgo._internal.unicode.RangeTable
```


```haxe
var lt:stdgo._internal.unicode.RangeTable
```


```haxe
var lu:stdgo._internal.unicode.RangeTable
```


```haxe
var lycian:stdgo._internal.unicode.RangeTable
```


```haxe
var lydian:stdgo._internal.unicode.RangeTable
```


```haxe
var m:stdgo._internal.unicode.RangeTable
```


```haxe
var mahajani:stdgo._internal.unicode.RangeTable
```


```haxe
var makasar:stdgo._internal.unicode.RangeTable
```


```haxe
var malayalam:stdgo._internal.unicode.RangeTable
```


```haxe
var mandaic:stdgo._internal.unicode.RangeTable
```


```haxe
var manichaean:stdgo._internal.unicode.RangeTable
```


```haxe
var marchen:stdgo._internal.unicode.RangeTable
```


```haxe
var mark:stdgo._internal.unicode.RangeTable
```


```haxe
var masaram_Gondi:stdgo._internal.unicode.RangeTable
```


```haxe
var mc:stdgo._internal.unicode.RangeTable
```


```haxe
var me:stdgo._internal.unicode.RangeTable
```


```haxe
var medefaidrin:stdgo._internal.unicode.RangeTable
```


```haxe
var meetei_Mayek:stdgo._internal.unicode.RangeTable
```


```haxe
var mende_Kikakui:stdgo._internal.unicode.RangeTable
```


```haxe
var meroitic_Cursive:stdgo._internal.unicode.RangeTable
```


```haxe
var meroitic_Hieroglyphs:stdgo._internal.unicode.RangeTable
```


```haxe
var miao:stdgo._internal.unicode.RangeTable
```


```haxe
var mn:stdgo._internal.unicode.RangeTable
```


```haxe
var modi:stdgo._internal.unicode.RangeTable
```


```haxe
var mongolian:stdgo._internal.unicode.RangeTable
```


```haxe
var mro:stdgo._internal.unicode.RangeTable
```


```haxe
var multani:stdgo._internal.unicode.RangeTable
```


```haxe
var myanmar:stdgo._internal.unicode.RangeTable
```


```haxe
var n:stdgo._internal.unicode.RangeTable
```


```haxe
var nabataean:stdgo._internal.unicode.RangeTable
```


```haxe
var nag_Mundari:stdgo._internal.unicode.RangeTable
```


```haxe
var nandinagari:stdgo._internal.unicode.RangeTable
```


```haxe
var nd:stdgo._internal.unicode.RangeTable
```


```haxe
var new_Tai_Lue:stdgo._internal.unicode.RangeTable
```


```haxe
var newa:stdgo._internal.unicode.RangeTable
```


```haxe
var nko:stdgo._internal.unicode.RangeTable
```


```haxe
var nl:stdgo._internal.unicode.RangeTable
```


```haxe
var no:stdgo._internal.unicode.RangeTable
```


```haxe
var noncharacter_Code_Point:stdgo._internal.unicode.RangeTable
```


```haxe
var number:stdgo._internal.unicode.RangeTable
```


```haxe
var nushu:stdgo._internal.unicode.RangeTable
```


```haxe
var nyiakeng_Puachue_Hmong:stdgo._internal.unicode.RangeTable
```


```haxe
var ogham:stdgo._internal.unicode.RangeTable
```


```haxe
var ol_Chiki:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Hungarian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Italic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_North_Arabian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Permic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Persian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Sogdian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_South_Arabian:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Turkic:stdgo._internal.unicode.RangeTable
```


```haxe
var old_Uyghur:stdgo._internal.unicode.RangeTable
```


```haxe
var oriya:stdgo._internal.unicode.RangeTable
```


```haxe
var osage:stdgo._internal.unicode.RangeTable
```


```haxe
var osmanya:stdgo._internal.unicode.RangeTable
```


```haxe
var other:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Alphabetic:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Default_Ignorable_Code_Point:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Grapheme_Extend:stdgo._internal.unicode.RangeTable
```


```haxe
var other_ID_Continue:stdgo._internal.unicode.RangeTable
```


```haxe
var other_ID_Start:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Lowercase:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Math:stdgo._internal.unicode.RangeTable
```


```haxe
var other_Uppercase:stdgo._internal.unicode.RangeTable
```


```haxe
var p:stdgo._internal.unicode.RangeTable
```


```haxe
var pahawh_Hmong:stdgo._internal.unicode.RangeTable
```


```haxe
var palmyrene:stdgo._internal.unicode.RangeTable
```


```haxe
var pattern_Syntax:stdgo._internal.unicode.RangeTable
```


```haxe
var pattern_White_Space:stdgo._internal.unicode.RangeTable
```


```haxe
var pau_Cin_Hau:stdgo._internal.unicode.RangeTable
```


```haxe
var pc:stdgo._internal.unicode.RangeTable
```


```haxe
var pd:stdgo._internal.unicode.RangeTable
```


```haxe
var pe:stdgo._internal.unicode.RangeTable
```


```haxe
var pf:stdgo._internal.unicode.RangeTable
```


```haxe
var phags_Pa:stdgo._internal.unicode.RangeTable
```


```haxe
var phoenician:stdgo._internal.unicode.RangeTable
```


```haxe
var pi:stdgo._internal.unicode.RangeTable
```


```haxe
var po:stdgo._internal.unicode.RangeTable
```


```haxe
var prepended_Concatenation_Mark:stdgo._internal.unicode.RangeTable
```


```haxe
var printRanges:Array<stdgo._internal.unicode.RangeTable>
```


```haxe
var properties:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var ps:stdgo._internal.unicode.RangeTable
```


```haxe
var psalter_Pahlavi:stdgo._internal.unicode.RangeTable
```


```haxe
var punct:stdgo._internal.unicode.RangeTable
```


```haxe
var quotation_Mark:stdgo._internal.unicode.RangeTable
```


```haxe
var radical:stdgo._internal.unicode.RangeTable
```


```haxe
var regional_Indicator:stdgo._internal.unicode.RangeTable
```


```haxe
var rejang:stdgo._internal.unicode.RangeTable
```


```haxe
var runic:stdgo._internal.unicode.RangeTable
```


```haxe
var s:stdgo._internal.unicode.RangeTable
```


```haxe
var samaritan:stdgo._internal.unicode.RangeTable
```


```haxe
var saurashtra:stdgo._internal.unicode.RangeTable
```


```haxe
var sc:stdgo._internal.unicode.RangeTable
```


```haxe
var scripts:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


```haxe
var sentence_Terminal:stdgo._internal.unicode.RangeTable
```


```haxe
var sharada:stdgo._internal.unicode.RangeTable
```


```haxe
var shavian:stdgo._internal.unicode.RangeTable
```


```haxe
var siddham:stdgo._internal.unicode.RangeTable
```


```haxe
var signWriting:stdgo._internal.unicode.RangeTable
```


```haxe
var sinhala:stdgo._internal.unicode.RangeTable
```


```haxe
var sk:stdgo._internal.unicode.RangeTable
```


```haxe
var sm:stdgo._internal.unicode.RangeTable
```


```haxe
var so:stdgo._internal.unicode.RangeTable
```


```haxe
var soft_Dotted:stdgo._internal.unicode.RangeTable
```


```haxe
var sogdian:stdgo._internal.unicode.RangeTable
```


```haxe
var sora_Sompeng:stdgo._internal.unicode.RangeTable
```


```haxe
var soyombo:stdgo._internal.unicode.RangeTable
```


```haxe
var space:stdgo._internal.unicode.RangeTable
```


```haxe
var sterm:stdgo._internal.unicode.RangeTable
```


```haxe
var sundanese:stdgo._internal.unicode.RangeTable
```


```haxe
var syloti_Nagri:stdgo._internal.unicode.RangeTable
```


```haxe
var symbol:stdgo._internal.unicode.RangeTable
```


```haxe
var syriac:stdgo._internal.unicode.RangeTable
```


```haxe
var tagalog:stdgo._internal.unicode.RangeTable
```


```haxe
var tagbanwa:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Le:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Tham:stdgo._internal.unicode.RangeTable
```


```haxe
var tai_Viet:stdgo._internal.unicode.RangeTable
```


```haxe
var takri:stdgo._internal.unicode.RangeTable
```


```haxe
var tamil:stdgo._internal.unicode.RangeTable
```


```haxe
var tangsa:stdgo._internal.unicode.RangeTable
```


```haxe
var tangut:stdgo._internal.unicode.RangeTable
```


```haxe
var telugu:stdgo._internal.unicode.RangeTable
```


```haxe
var terminal_Punctuation:stdgo._internal.unicode.RangeTable
```


```haxe
var thaana:stdgo._internal.unicode.RangeTable
```


```haxe
var thai:stdgo._internal.unicode.RangeTable
```


```haxe
var tibetan:stdgo._internal.unicode.RangeTable
```


```haxe
var tifinagh:stdgo._internal.unicode.RangeTable
```


```haxe
var tirhuta:stdgo._internal.unicode.RangeTable
```


```haxe
var title:stdgo._internal.unicode.RangeTable
```


```haxe
var toto:stdgo._internal.unicode.RangeTable
```


```haxe
var turkishCase:stdgo._internal.unicode.SpecialCase
```


```haxe
var ugaritic:stdgo._internal.unicode.RangeTable
```


```haxe
var unified_Ideograph:stdgo._internal.unicode.RangeTable
```


```haxe
var upper:stdgo._internal.unicode.RangeTable
```


```haxe
var vai:stdgo._internal.unicode.RangeTable
```


```haxe
var variation_Selector:stdgo._internal.unicode.RangeTable
```


```haxe
var vithkuqi:stdgo._internal.unicode.RangeTable
```


```haxe
var wancho:stdgo._internal.unicode.RangeTable
```


```haxe
var warang_Citi:stdgo._internal.unicode.RangeTable
```


```haxe
var white_Space:stdgo._internal.unicode.RangeTable
```


```haxe
var yezidi:stdgo._internal.unicode.RangeTable
```


```haxe
var yi:stdgo._internal.unicode.RangeTable
```


```haxe
var z:stdgo._internal.unicode.RangeTable
```


```haxe
var zanabazar_Square:stdgo._internal.unicode.RangeTable
```


```haxe
var zl:stdgo._internal.unicode.RangeTable
```


```haxe
var zp:stdgo._internal.unicode.RangeTable
```


```haxe
var zs:stdgo._internal.unicode.RangeTable
```


# Functions


```haxe
import stdgo.unicode.Unicode
```


## function get\_adlam


```haxe
function get_adlam():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L174>)


## function get\_ahom


```haxe
function get_ahom():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L177>)


## function get\_anatolian\_Hieroglyphs


```haxe
function get_anatolian_Hieroglyphs():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L180>)


## function get\_arabic


```haxe
function get_arabic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L183>)


## function get\_armenian


```haxe
function get_armenian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L186>)


## function get\_ascii\_Hex\_Digit


```haxe
function get_ascii_Hex_Digit():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L666>)


## function get\_avestan


```haxe
function get_avestan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L189>)


## function get\_azeriCase


```haxe
function get_azeriCase():stdgo._internal.unicode.SpecialCase
```


[\(view code\)](<./Unicode.hx#L21>)


## function get\_balinese


```haxe
function get_balinese():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L192>)


## function get\_bamum


```haxe
function get_bamum():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L195>)


## function get\_bassa\_Vah


```haxe
function get_bassa_Vah():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L198>)


## function get\_batak


```haxe
function get_batak():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L201>)


## function get\_bengali


```haxe
function get_bengali():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L204>)


## function get\_bhaiksuki


```haxe
function get_bhaiksuki():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L207>)


## function get\_bidi\_Control


```haxe
function get_bidi_Control():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L669>)


## function get\_bopomofo


```haxe
function get_bopomofo():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L210>)


## function get\_brahmi


```haxe
function get_brahmi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L213>)


## function get\_braille


```haxe
function get_braille():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L216>)


## function get\_buginese


```haxe
function get_buginese():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L219>)


## function get\_buhid


```haxe
function get_buhid():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L222>)


## function get\_c


```haxe
function get_c():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L90>)


## function get\_canadian\_Aboriginal


```haxe
function get_canadian_Aboriginal():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L225>)


## function get\_carian


```haxe
function get_carian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L228>)


## function get\_caseRanges


```haxe
function get_caseRanges():Array<stdgo._internal.unicode.CaseRange>
```


[\(view code\)](<./Unicode.hx#L774>)


## function get\_categories


```haxe
function get_categories():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L171>)


## function get\_caucasian\_Albanian


```haxe
function get_caucasian_Albanian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L231>)


## function get\_cc


```haxe
function get_cc():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L24>)


## function get\_cf


```haxe
function get_cf():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L27>)


## function get\_chakma


```haxe
function get_chakma():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L234>)


## function get\_cham


```haxe
function get_cham():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L237>)


## function get\_cherokee


```haxe
function get_cherokee():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L240>)


## function get\_chorasmian


```haxe
function get_chorasmian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L243>)


## function get\_co


```haxe
function get_co():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L30>)


## function get\_common


```haxe
function get_common():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L246>)


## function get\_coptic


```haxe
function get_coptic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L249>)


## function get\_cs


```haxe
function get_cs():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L33>)


## function get\_cuneiform


```haxe
function get_cuneiform():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L252>)


## function get\_cypriot


```haxe
function get_cypriot():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L255>)


## function get\_cypro\_Minoan


```haxe
function get_cypro_Minoan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L258>)


## function get\_cyrillic


```haxe
function get_cyrillic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L261>)


## function get\_dash


```haxe
function get_dash():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L672>)


## function get\_deprecated


```haxe
function get_deprecated():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L675>)


## function get\_deseret


```haxe
function get_deseret():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L264>)


## function get\_devanagari


```haxe
function get_devanagari():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L267>)


## function get\_diacritic


```haxe
function get_diacritic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L678>)


## function get\_digit


```haxe
function get_digit():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L36>)


## function get\_dives\_Akuru


```haxe
function get_dives_Akuru():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L270>)


## function get\_dogra


```haxe
function get_dogra():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L273>)


## function get\_duployan


```haxe
function get_duployan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L276>)


## function get\_egyptian\_Hieroglyphs


```haxe
function get_egyptian_Hieroglyphs():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L279>)


## function get\_elbasan


```haxe
function get_elbasan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L282>)


## function get\_elymaic


```haxe
function get_elymaic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L285>)


## function get\_ethiopic


```haxe
function get_ethiopic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L288>)


## function get\_extender


```haxe
function get_extender():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L681>)


## function get\_foldCategory


```haxe
function get_foldCategory():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L777>)


## function get\_foldScript


```haxe
function get_foldScript():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L780>)


## function get\_georgian


```haxe
function get_georgian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L291>)


## function get\_glagolitic


```haxe
function get_glagolitic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L294>)


## function get\_gothic


```haxe
function get_gothic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L297>)


## function get\_grantha


```haxe
function get_grantha():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L300>)


## function get\_graphicRanges


```haxe
function get_graphicRanges():Array<stdgo._internal.unicode.RangeTable>
```


[\(view code\)](<./Unicode.hx#L168>)


## function get\_greek


```haxe
function get_greek():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L303>)


## function get\_gujarati


```haxe
function get_gujarati():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L306>)


## function get\_gunjala\_Gondi


```haxe
function get_gunjala_Gondi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L309>)


## function get\_gurmukhi


```haxe
function get_gurmukhi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L312>)


## function get\_han


```haxe
function get_han():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L315>)


## function get\_hangul


```haxe
function get_hangul():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L318>)


## function get\_hanifi\_Rohingya


```haxe
function get_hanifi_Rohingya():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L321>)


## function get\_hanunoo


```haxe
function get_hanunoo():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L324>)


## function get\_hatran


```haxe
function get_hatran():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L327>)


## function get\_hebrew


```haxe
function get_hebrew():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L330>)


## function get\_hex\_Digit


```haxe
function get_hex_Digit():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L684>)


## function get\_hiragana


```haxe
function get_hiragana():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L333>)


## function get\_hyphen


```haxe
function get_hyphen():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L687>)


## function get\_ideographic


```haxe
function get_ideographic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L696>)


## function get\_ids\_Binary\_Operator


```haxe
function get_ids_Binary_Operator():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L690>)


## function get\_ids\_Trinary\_Operator


```haxe
function get_ids_Trinary_Operator():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L693>)


## function get\_imperial\_Aramaic


```haxe
function get_imperial_Aramaic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L336>)


## function get\_inherited


```haxe
function get_inherited():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L339>)


## function get\_inscriptional\_Pahlavi


```haxe
function get_inscriptional_Pahlavi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L342>)


## function get\_inscriptional\_Parthian


```haxe
function get_inscriptional_Parthian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L345>)


## function get\_javanese


```haxe
function get_javanese():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L348>)


## function get\_join\_Control


```haxe
function get_join_Control():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L699>)


## function get\_kaithi


```haxe
function get_kaithi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L351>)


## function get\_kannada


```haxe
function get_kannada():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L354>)


## function get\_katakana


```haxe
function get_katakana():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L357>)


## function get\_kawi


```haxe
function get_kawi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L360>)


## function get\_kayah\_Li


```haxe
function get_kayah_Li():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L363>)


## function get\_kharoshthi


```haxe
function get_kharoshthi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L366>)


## function get\_khitan\_Small\_Script


```haxe
function get_khitan_Small_Script():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L369>)


## function get\_khmer


```haxe
function get_khmer():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L372>)


## function get\_khojki


```haxe
function get_khojki():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L375>)


## function get\_khudawadi


```haxe
function get_khudawadi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L378>)


## function get\_l


```haxe
function get_l():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L45>)


## function get\_lao


```haxe
function get_lao():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L381>)


## function get\_latin


```haxe
function get_latin():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L384>)


## function get\_lepcha


```haxe
function get_lepcha():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L387>)


## function get\_letter


```haxe
function get_letter():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L42>)


## function get\_limbu


```haxe
function get_limbu():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L390>)


## function get\_linear\_A


```haxe
function get_linear_A():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L393>)


## function get\_linear\_B


```haxe
function get_linear_B():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L396>)


## function get\_lisu


```haxe
function get_lisu():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L399>)


## function get\_ll


```haxe
function get_ll():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L57>)


## function get\_lm


```haxe
function get_lm():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L48>)


## function get\_lo


```haxe
function get_lo():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L51>)


## function get\_logical\_Order\_Exception


```haxe
function get_logical_Order_Exception():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L702>)


## function get\_lower


```haxe
function get_lower():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L54>)


## function get\_lt


```haxe
function get_lt():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L150>)


## function get\_lu


```haxe
function get_lu():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L156>)


## function get\_lycian


```haxe
function get_lycian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L402>)


## function get\_lydian


```haxe
function get_lydian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L405>)


## function get\_m


```haxe
function get_m():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L63>)


## function get\_mahajani


```haxe
function get_mahajani():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L408>)


## function get\_makasar


```haxe
function get_makasar():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L411>)


## function get\_malayalam


```haxe
function get_malayalam():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L414>)


## function get\_mandaic


```haxe
function get_mandaic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L417>)


## function get\_manichaean


```haxe
function get_manichaean():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L420>)


## function get\_marchen


```haxe
function get_marchen():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L423>)


## function get\_mark


```haxe
function get_mark():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L60>)


## function get\_masaram\_Gondi


```haxe
function get_masaram_Gondi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L426>)


## function get\_mc


```haxe
function get_mc():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L66>)


## function get\_me


```haxe
function get_me():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L69>)


## function get\_medefaidrin


```haxe
function get_medefaidrin():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L429>)


## function get\_meetei\_Mayek


```haxe
function get_meetei_Mayek():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L432>)


## function get\_mende\_Kikakui


```haxe
function get_mende_Kikakui():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L435>)


## function get\_meroitic\_Cursive


```haxe
function get_meroitic_Cursive():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L438>)


## function get\_meroitic\_Hieroglyphs


```haxe
function get_meroitic_Hieroglyphs():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L441>)


## function get\_miao


```haxe
function get_miao():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L444>)


## function get\_mn


```haxe
function get_mn():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L72>)


## function get\_modi


```haxe
function get_modi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L447>)


## function get\_mongolian


```haxe
function get_mongolian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L450>)


## function get\_mro


```haxe
function get_mro():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L453>)


## function get\_multani


```haxe
function get_multani():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L456>)


## function get\_myanmar


```haxe
function get_myanmar():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L459>)


## function get\_n


```haxe
function get_n():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L84>)


## function get\_nabataean


```haxe
function get_nabataean():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L462>)


## function get\_nag\_Mundari


```haxe
function get_nag_Mundari():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L465>)


## function get\_nandinagari


```haxe
function get_nandinagari():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L468>)


## function get\_nd


```haxe
function get_nd():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L39>)


## function get\_new\_Tai\_Lue


```haxe
function get_new_Tai_Lue():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L471>)


## function get\_newa


```haxe
function get_newa():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L474>)


## function get\_nko


```haxe
function get_nko():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L477>)


## function get\_nl


```haxe
function get_nl():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L75>)


## function get\_no


```haxe
function get_no():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L78>)


## function get\_noncharacter\_Code\_Point


```haxe
function get_noncharacter_Code_Point():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L705>)


## function get\_number


```haxe
function get_number():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L81>)


## function get\_nushu


```haxe
function get_nushu():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L480>)


## function get\_nyiakeng\_Puachue\_Hmong


```haxe
function get_nyiakeng_Puachue_Hmong():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L483>)


## function get\_ogham


```haxe
function get_ogham():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L486>)


## function get\_ol\_Chiki


```haxe
function get_ol_Chiki():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L489>)


## function get\_old\_Hungarian


```haxe
function get_old_Hungarian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L492>)


## function get\_old\_Italic


```haxe
function get_old_Italic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L495>)


## function get\_old\_North\_Arabian


```haxe
function get_old_North_Arabian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L498>)


## function get\_old\_Permic


```haxe
function get_old_Permic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L501>)


## function get\_old\_Persian


```haxe
function get_old_Persian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L504>)


## function get\_old\_Sogdian


```haxe
function get_old_Sogdian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L507>)


## function get\_old\_South\_Arabian


```haxe
function get_old_South_Arabian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L510>)


## function get\_old\_Turkic


```haxe
function get_old_Turkic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L513>)


## function get\_old\_Uyghur


```haxe
function get_old_Uyghur():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L516>)


## function get\_oriya


```haxe
function get_oriya():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L519>)


## function get\_osage


```haxe
function get_osage():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L522>)


## function get\_osmanya


```haxe
function get_osmanya():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L525>)


## function get\_other


```haxe
function get_other():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L87>)


## function get\_other\_Alphabetic


```haxe
function get_other_Alphabetic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L708>)


## function get\_other\_Default\_Ignorable\_Code\_Point


```haxe
function get_other_Default_Ignorable_Code_Point():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L711>)


## function get\_other\_Grapheme\_Extend


```haxe
function get_other_Grapheme_Extend():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L714>)


## function get\_other\_ID\_Continue


```haxe
function get_other_ID_Continue():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L717>)


## function get\_other\_ID\_Start


```haxe
function get_other_ID_Start():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L720>)


## function get\_other\_Lowercase


```haxe
function get_other_Lowercase():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L723>)


## function get\_other\_Math


```haxe
function get_other_Math():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L726>)


## function get\_other\_Uppercase


```haxe
function get_other_Uppercase():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L729>)


## function get\_p


```haxe
function get_p():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L117>)


## function get\_pahawh\_Hmong


```haxe
function get_pahawh_Hmong():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L528>)


## function get\_palmyrene


```haxe
function get_palmyrene():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L531>)


## function get\_pattern\_Syntax


```haxe
function get_pattern_Syntax():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L732>)


## function get\_pattern\_White\_Space


```haxe
function get_pattern_White_Space():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L735>)


## function get\_pau\_Cin\_Hau


```haxe
function get_pau_Cin_Hau():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L534>)


## function get\_pc


```haxe
function get_pc():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L93>)


## function get\_pd


```haxe
function get_pd():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L96>)


## function get\_pe


```haxe
function get_pe():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L99>)


## function get\_pf


```haxe
function get_pf():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L102>)


## function get\_phags\_Pa


```haxe
function get_phags_Pa():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L537>)


## function get\_phoenician


```haxe
function get_phoenician():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L540>)


## function get\_pi


```haxe
function get_pi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L105>)


## function get\_po


```haxe
function get_po():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L108>)


## function get\_prepended\_Concatenation\_Mark


```haxe
function get_prepended_Concatenation_Mark():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L738>)


## function get\_printRanges


```haxe
function get_printRanges():Array<stdgo._internal.unicode.RangeTable>
```


[\(view code\)](<./Unicode.hx#L144>)


## function get\_properties


```haxe
function get_properties():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L771>)


## function get\_ps


```haxe
function get_ps():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L111>)


## function get\_psalter\_Pahlavi


```haxe
function get_psalter_Pahlavi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L543>)


## function get\_punct


```haxe
function get_punct():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L114>)


## function get\_quotation\_Mark


```haxe
function get_quotation_Mark():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L741>)


## function get\_radical


```haxe
function get_radical():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L744>)


## function get\_regional\_Indicator


```haxe
function get_regional_Indicator():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L747>)


## function get\_rejang


```haxe
function get_rejang():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L546>)


## function get\_runic


```haxe
function get_runic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L549>)


## function get\_s


```haxe
function get_s():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L141>)


## function get\_samaritan


```haxe
function get_samaritan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L552>)


## function get\_saurashtra


```haxe
function get_saurashtra():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L555>)


## function get\_sc


```haxe
function get_sc():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L120>)


## function get\_scripts


```haxe
function get_scripts():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L663>)


## function get\_sentence\_Terminal


```haxe
function get_sentence_Terminal():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L753>)


## function get\_sharada


```haxe
function get_sharada():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L558>)


## function get\_shavian


```haxe
function get_shavian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L561>)


## function get\_siddham


```haxe
function get_siddham():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L564>)


## function get\_signWriting


```haxe
function get_signWriting():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L567>)


## function get\_sinhala


```haxe
function get_sinhala():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L570>)


## function get\_sk


```haxe
function get_sk():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L123>)


## function get\_sm


```haxe
function get_sm():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L126>)


## function get\_so


```haxe
function get_so():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L129>)


## function get\_soft\_Dotted


```haxe
function get_soft_Dotted():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L756>)


## function get\_sogdian


```haxe
function get_sogdian():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L573>)


## function get\_sora\_Sompeng


```haxe
function get_sora_Sompeng():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L576>)


## function get\_soyombo


```haxe
function get_soyombo():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L579>)


## function get\_space


```haxe
function get_space():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L132>)


## function get\_sterm


```haxe
function get_sterm():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L750>)


## function get\_sundanese


```haxe
function get_sundanese():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L582>)


## function get\_syloti\_Nagri


```haxe
function get_syloti_Nagri():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L585>)


## function get\_symbol


```haxe
function get_symbol():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L138>)


## function get\_syriac


```haxe
function get_syriac():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L588>)


## function get\_tagalog


```haxe
function get_tagalog():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L591>)


## function get\_tagbanwa


```haxe
function get_tagbanwa():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L594>)


## function get\_tai\_Le


```haxe
function get_tai_Le():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L597>)


## function get\_tai\_Tham


```haxe
function get_tai_Tham():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L600>)


## function get\_tai\_Viet


```haxe
function get_tai_Viet():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L603>)


## function get\_takri


```haxe
function get_takri():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L606>)


## function get\_tamil


```haxe
function get_tamil():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L609>)


## function get\_tangsa


```haxe
function get_tangsa():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L612>)


## function get\_tangut


```haxe
function get_tangut():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L615>)


## function get\_telugu


```haxe
function get_telugu():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L618>)


## function get\_terminal\_Punctuation


```haxe
function get_terminal_Punctuation():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L759>)


## function get\_thaana


```haxe
function get_thaana():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L621>)


## function get\_thai


```haxe
function get_thai():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L624>)


## function get\_tibetan


```haxe
function get_tibetan():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L627>)


## function get\_tifinagh


```haxe
function get_tifinagh():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L630>)


## function get\_tirhuta


```haxe
function get_tirhuta():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L633>)


## function get\_title


```haxe
function get_title():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L147>)


## function get\_toto


```haxe
function get_toto():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L636>)


## function get\_turkishCase


```haxe
function get_turkishCase():stdgo._internal.unicode.SpecialCase
```


[\(view code\)](<./Unicode.hx#L18>)


## function get\_ugaritic


```haxe
function get_ugaritic():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L639>)


## function get\_unified\_Ideograph


```haxe
function get_unified_Ideograph():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L762>)


## function get\_upper


```haxe
function get_upper():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L153>)


## function get\_vai


```haxe
function get_vai():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L642>)


## function get\_variation\_Selector


```haxe
function get_variation_Selector():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L765>)


## function get\_vithkuqi


```haxe
function get_vithkuqi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L645>)


## function get\_wancho


```haxe
function get_wancho():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L648>)


## function get\_warang\_Citi


```haxe
function get_warang_Citi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L651>)


## function get\_white\_Space


```haxe
function get_white_Space():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L768>)


## function get\_yezidi


```haxe
function get_yezidi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L654>)


## function get\_yi


```haxe
function get_yi():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L657>)


## function get\_z


```haxe
function get_z():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L135>)


## function get\_zanabazar\_Square


```haxe
function get_zanabazar_Square():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L660>)


## function get\_zl


```haxe
function get_zl():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L159>)


## function get\_zp


```haxe
function get_zp():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L162>)


## function get\_zs


```haxe
function get_zs():stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L165>)


## function in\_


```haxe
function in_(r:Int, ranges:haxe.Rest<stdgo.Ref<stdgo.unicode.RangeTable>>):Bool
```



In reports whether the rune is a member of one of the ranges.  

[\(view code\)](<./Unicode.hx#L815>)


## function isControl


```haxe
function isControl(r:Int):Bool
```



IsControl reports whether the rune is a control character.
The C \(Other\) Unicode category includes more code points
such as surrogates; use Is\(C, r\) to test for them.  

[\(view code\)](<./Unicode.hx#L821>)


## function isDigit


```haxe
function isDigit(r:Int):Bool
```



IsDigit reports whether the rune is a decimal digit.  

[\(view code\)](<./Unicode.hx#L792>)


## function isGraphic


```haxe
function isGraphic(r:Int):Bool
```



IsGraphic reports whether the rune is defined as a Graphic by Unicode.
Such characters include letters, marks, numbers, punctuation, symbols, and
spaces, from categories L, M, N, P, S, Zs.  

[\(view code\)](<./Unicode.hx#L798>)


## function isLetter


```haxe
function isLetter(r:Int):Bool
```



IsLetter reports whether the rune is a letter \(category L\).  

[\(view code\)](<./Unicode.hx#L825>)


## function isLower


```haxe
function isLower(r:Int):Bool
```



IsLower reports whether the rune is a lower case letter.  

[\(view code\)](<./Unicode.hx#L865>)


## function isMark


```haxe
function isMark(r:Int):Bool
```



IsMark reports whether the rune is a mark character \(category M\).  

[\(view code\)](<./Unicode.hx#L829>)


## function isNumber


```haxe
function isNumber(r:Int):Bool
```



IsNumber reports whether the rune is a number \(category N\).  

[\(view code\)](<./Unicode.hx#L833>)


## function isOneOf


```haxe
function isOneOf(ranges:Array<stdgo.unicode.RangeTable>, r:Int):Bool
```



IsOneOf reports whether the rune is a member of one of the ranges.
The function "In" provides a nicer signature and should be used in preference to IsOneOf.  

[\(view code\)](<./Unicode.hx#L811>)


## function isPrint


```haxe
function isPrint(r:Int):Bool
```



IsPrint reports whether the rune is defined as printable by Go. Such
characters include letters, marks, numbers, punctuation, symbols, and the
ASCII space character, from categories L, M, N, P, S and the ASCII space
character. This categorization is the same as IsGraphic except that the
only spacing character is ASCII space, U\+0020.  

[\(view code\)](<./Unicode.hx#L806>)


## function isPunct


```haxe
function isPunct(r:Int):Bool
```



IsPunct reports whether the rune is a Unicode punctuation character
\(category P\).  

[\(view code\)](<./Unicode.hx#L838>)


## function isSpace


```haxe
function isSpace(r:Int):Bool
```



IsSpace reports whether the rune is a space character as defined
by Unicode's White Space property; in the Latin\-1 space
this is  

```
	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
```

Other definitions of spacing characters are set by category
Z and property Pattern\_White\_Space.  

[\(view code\)](<./Unicode.hx#L849>)


## function isSymbol


```haxe
function isSymbol(r:Int):Bool
```



IsSymbol reports whether the rune is a symbolic character.  

[\(view code\)](<./Unicode.hx#L853>)


## function isTitle


```haxe
function isTitle(r:Int):Bool
```



IsTitle reports whether the rune is a title case letter.  

[\(view code\)](<./Unicode.hx#L869>)


## function isUpper


```haxe
function isUpper(r:Int):Bool
```



IsUpper reports whether the rune is an upper case letter.  

[\(view code\)](<./Unicode.hx#L861>)


## function is\_


```haxe
function is_(rangeTab:stdgo.unicode.RangeTable, r:Int):Bool
```



Is reports whether the rune is in the specified table of ranges.  

[\(view code\)](<./Unicode.hx#L857>)


## function set\_adlam


```haxe
function set_adlam(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L175>)


## function set\_ahom


```haxe
function set_ahom(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L178>)


## function set\_anatolian\_Hieroglyphs


```haxe
function set_anatolian_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L181>)


## function set\_arabic


```haxe
function set_arabic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L184>)


## function set\_armenian


```haxe
function set_armenian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L187>)


## function set\_ascii\_Hex\_Digit


```haxe
function set_ascii_Hex_Digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L667>)


## function set\_avestan


```haxe
function set_avestan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L190>)


## function set\_azeriCase


```haxe
function set_azeriCase(v:stdgo._internal.unicode.SpecialCase):stdgo._internal.unicode.SpecialCase
```


[\(view code\)](<./Unicode.hx#L22>)


## function set\_balinese


```haxe
function set_balinese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L193>)


## function set\_bamum


```haxe
function set_bamum(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L196>)


## function set\_bassa\_Vah


```haxe
function set_bassa_Vah(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L199>)


## function set\_batak


```haxe
function set_batak(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L202>)


## function set\_bengali


```haxe
function set_bengali(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L205>)


## function set\_bhaiksuki


```haxe
function set_bhaiksuki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L208>)


## function set\_bidi\_Control


```haxe
function set_bidi_Control(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L670>)


## function set\_bopomofo


```haxe
function set_bopomofo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L211>)


## function set\_brahmi


```haxe
function set_brahmi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L214>)


## function set\_braille


```haxe
function set_braille(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L217>)


## function set\_buginese


```haxe
function set_buginese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L220>)


## function set\_buhid


```haxe
function set_buhid(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L223>)


## function set\_c


```haxe
function set_c(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L91>)


## function set\_canadian\_Aboriginal


```haxe
function set_canadian_Aboriginal(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L226>)


## function set\_carian


```haxe
function set_carian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L229>)


## function set\_caseRanges


```haxe
function set_caseRanges(v:Array<stdgo._internal.unicode.CaseRange>):Array<stdgo._internal.unicode.CaseRange>
```


[\(view code\)](<./Unicode.hx#L775>)


## function set\_categories


```haxe
function set_categories(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L172>)


## function set\_caucasian\_Albanian


```haxe
function set_caucasian_Albanian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L232>)


## function set\_cc


```haxe
function set_cc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L25>)


## function set\_cf


```haxe
function set_cf(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L28>)


## function set\_chakma


```haxe
function set_chakma(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L235>)


## function set\_cham


```haxe
function set_cham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L238>)


## function set\_cherokee


```haxe
function set_cherokee(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L241>)


## function set\_chorasmian


```haxe
function set_chorasmian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L244>)


## function set\_co


```haxe
function set_co(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L31>)


## function set\_common


```haxe
function set_common(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L247>)


## function set\_coptic


```haxe
function set_coptic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L250>)


## function set\_cs


```haxe
function set_cs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L34>)


## function set\_cuneiform


```haxe
function set_cuneiform(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L253>)


## function set\_cypriot


```haxe
function set_cypriot(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L256>)


## function set\_cypro\_Minoan


```haxe
function set_cypro_Minoan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L259>)


## function set\_cyrillic


```haxe
function set_cyrillic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L262>)


## function set\_dash


```haxe
function set_dash(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L673>)


## function set\_deprecated


```haxe
function set_deprecated(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L676>)


## function set\_deseret


```haxe
function set_deseret(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L265>)


## function set\_devanagari


```haxe
function set_devanagari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L268>)


## function set\_diacritic


```haxe
function set_diacritic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L679>)


## function set\_digit


```haxe
function set_digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L37>)


## function set\_dives\_Akuru


```haxe
function set_dives_Akuru(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L271>)


## function set\_dogra


```haxe
function set_dogra(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L274>)


## function set\_duployan


```haxe
function set_duployan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L277>)


## function set\_egyptian\_Hieroglyphs


```haxe
function set_egyptian_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L280>)


## function set\_elbasan


```haxe
function set_elbasan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L283>)


## function set\_elymaic


```haxe
function set_elymaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L286>)


## function set\_ethiopic


```haxe
function set_ethiopic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L289>)


## function set\_extender


```haxe
function set_extender(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L682>)


## function set\_foldCategory


```haxe
function set_foldCategory(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L778>)


## function set\_foldScript


```haxe
function set_foldScript(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L781>)


## function set\_georgian


```haxe
function set_georgian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L292>)


## function set\_glagolitic


```haxe
function set_glagolitic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L295>)


## function set\_gothic


```haxe
function set_gothic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L298>)


## function set\_grantha


```haxe
function set_grantha(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L301>)


## function set\_graphicRanges


```haxe
function set_graphicRanges(v:Array<stdgo._internal.unicode.RangeTable>):Array<stdgo._internal.unicode.RangeTable>
```


[\(view code\)](<./Unicode.hx#L169>)


## function set\_greek


```haxe
function set_greek(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L304>)


## function set\_gujarati


```haxe
function set_gujarati(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L307>)


## function set\_gunjala\_Gondi


```haxe
function set_gunjala_Gondi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L310>)


## function set\_gurmukhi


```haxe
function set_gurmukhi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L313>)


## function set\_han


```haxe
function set_han(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L316>)


## function set\_hangul


```haxe
function set_hangul(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L319>)


## function set\_hanifi\_Rohingya


```haxe
function set_hanifi_Rohingya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L322>)


## function set\_hanunoo


```haxe
function set_hanunoo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L325>)


## function set\_hatran


```haxe
function set_hatran(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L328>)


## function set\_hebrew


```haxe
function set_hebrew(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L331>)


## function set\_hex\_Digit


```haxe
function set_hex_Digit(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L685>)


## function set\_hiragana


```haxe
function set_hiragana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L334>)


## function set\_hyphen


```haxe
function set_hyphen(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L688>)


## function set\_ideographic


```haxe
function set_ideographic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L697>)


## function set\_ids\_Binary\_Operator


```haxe
function set_ids_Binary_Operator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L691>)


## function set\_ids\_Trinary\_Operator


```haxe
function set_ids_Trinary_Operator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L694>)


## function set\_imperial\_Aramaic


```haxe
function set_imperial_Aramaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L337>)


## function set\_inherited


```haxe
function set_inherited(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L340>)


## function set\_inscriptional\_Pahlavi


```haxe
function set_inscriptional_Pahlavi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L343>)


## function set\_inscriptional\_Parthian


```haxe
function set_inscriptional_Parthian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L346>)


## function set\_javanese


```haxe
function set_javanese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L349>)


## function set\_join\_Control


```haxe
function set_join_Control(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L700>)


## function set\_kaithi


```haxe
function set_kaithi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L352>)


## function set\_kannada


```haxe
function set_kannada(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L355>)


## function set\_katakana


```haxe
function set_katakana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L358>)


## function set\_kawi


```haxe
function set_kawi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L361>)


## function set\_kayah\_Li


```haxe
function set_kayah_Li(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L364>)


## function set\_kharoshthi


```haxe
function set_kharoshthi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L367>)


## function set\_khitan\_Small\_Script


```haxe
function set_khitan_Small_Script(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L370>)


## function set\_khmer


```haxe
function set_khmer(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L373>)


## function set\_khojki


```haxe
function set_khojki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L376>)


## function set\_khudawadi


```haxe
function set_khudawadi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L379>)


## function set\_l


```haxe
function set_l(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L46>)


## function set\_lao


```haxe
function set_lao(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L382>)


## function set\_latin


```haxe
function set_latin(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L385>)


## function set\_lepcha


```haxe
function set_lepcha(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L388>)


## function set\_letter


```haxe
function set_letter(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L43>)


## function set\_limbu


```haxe
function set_limbu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L391>)


## function set\_linear\_A


```haxe
function set_linear_A(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L394>)


## function set\_linear\_B


```haxe
function set_linear_B(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L397>)


## function set\_lisu


```haxe
function set_lisu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L400>)


## function set\_ll


```haxe
function set_ll(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L58>)


## function set\_lm


```haxe
function set_lm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L49>)


## function set\_lo


```haxe
function set_lo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L52>)


## function set\_logical\_Order\_Exception


```haxe
function set_logical_Order_Exception(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L703>)


## function set\_lower


```haxe
function set_lower(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L55>)


## function set\_lt


```haxe
function set_lt(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L151>)


## function set\_lu


```haxe
function set_lu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L157>)


## function set\_lycian


```haxe
function set_lycian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L403>)


## function set\_lydian


```haxe
function set_lydian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L406>)


## function set\_m


```haxe
function set_m(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L64>)


## function set\_mahajani


```haxe
function set_mahajani(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L409>)


## function set\_makasar


```haxe
function set_makasar(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L412>)


## function set\_malayalam


```haxe
function set_malayalam(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L415>)


## function set\_mandaic


```haxe
function set_mandaic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L418>)


## function set\_manichaean


```haxe
function set_manichaean(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L421>)


## function set\_marchen


```haxe
function set_marchen(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L424>)


## function set\_mark


```haxe
function set_mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L61>)


## function set\_masaram\_Gondi


```haxe
function set_masaram_Gondi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L427>)


## function set\_mc


```haxe
function set_mc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L67>)


## function set\_me


```haxe
function set_me(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L70>)


## function set\_medefaidrin


```haxe
function set_medefaidrin(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L430>)


## function set\_meetei\_Mayek


```haxe
function set_meetei_Mayek(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L433>)


## function set\_mende\_Kikakui


```haxe
function set_mende_Kikakui(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L436>)


## function set\_meroitic\_Cursive


```haxe
function set_meroitic_Cursive(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L439>)


## function set\_meroitic\_Hieroglyphs


```haxe
function set_meroitic_Hieroglyphs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L442>)


## function set\_miao


```haxe
function set_miao(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L445>)


## function set\_mn


```haxe
function set_mn(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L73>)


## function set\_modi


```haxe
function set_modi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L448>)


## function set\_mongolian


```haxe
function set_mongolian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L451>)


## function set\_mro


```haxe
function set_mro(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L454>)


## function set\_multani


```haxe
function set_multani(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L457>)


## function set\_myanmar


```haxe
function set_myanmar(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L460>)


## function set\_n


```haxe
function set_n(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L85>)


## function set\_nabataean


```haxe
function set_nabataean(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L463>)


## function set\_nag\_Mundari


```haxe
function set_nag_Mundari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L466>)


## function set\_nandinagari


```haxe
function set_nandinagari(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L469>)


## function set\_nd


```haxe
function set_nd(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L40>)


## function set\_new\_Tai\_Lue


```haxe
function set_new_Tai_Lue(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L472>)


## function set\_newa


```haxe
function set_newa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L475>)


## function set\_nko


```haxe
function set_nko(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L478>)


## function set\_nl


```haxe
function set_nl(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L76>)


## function set\_no


```haxe
function set_no(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L79>)


## function set\_noncharacter\_Code\_Point


```haxe
function set_noncharacter_Code_Point(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L706>)


## function set\_number


```haxe
function set_number(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L82>)


## function set\_nushu


```haxe
function set_nushu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L481>)


## function set\_nyiakeng\_Puachue\_Hmong


```haxe
function set_nyiakeng_Puachue_Hmong(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L484>)


## function set\_ogham


```haxe
function set_ogham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L487>)


## function set\_ol\_Chiki


```haxe
function set_ol_Chiki(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L490>)


## function set\_old\_Hungarian


```haxe
function set_old_Hungarian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L493>)


## function set\_old\_Italic


```haxe
function set_old_Italic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L496>)


## function set\_old\_North\_Arabian


```haxe
function set_old_North_Arabian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L499>)


## function set\_old\_Permic


```haxe
function set_old_Permic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L502>)


## function set\_old\_Persian


```haxe
function set_old_Persian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L505>)


## function set\_old\_Sogdian


```haxe
function set_old_Sogdian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L508>)


## function set\_old\_South\_Arabian


```haxe
function set_old_South_Arabian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L511>)


## function set\_old\_Turkic


```haxe
function set_old_Turkic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L514>)


## function set\_old\_Uyghur


```haxe
function set_old_Uyghur(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L517>)


## function set\_oriya


```haxe
function set_oriya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L520>)


## function set\_osage


```haxe
function set_osage(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L523>)


## function set\_osmanya


```haxe
function set_osmanya(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L526>)


## function set\_other


```haxe
function set_other(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L88>)


## function set\_other\_Alphabetic


```haxe
function set_other_Alphabetic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L709>)


## function set\_other\_Default\_Ignorable\_Code\_Point


```haxe
function set_other_Default_Ignorable_Code_Point(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L712>)


## function set\_other\_Grapheme\_Extend


```haxe
function set_other_Grapheme_Extend(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L715>)


## function set\_other\_ID\_Continue


```haxe
function set_other_ID_Continue(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L718>)


## function set\_other\_ID\_Start


```haxe
function set_other_ID_Start(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L721>)


## function set\_other\_Lowercase


```haxe
function set_other_Lowercase(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L724>)


## function set\_other\_Math


```haxe
function set_other_Math(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L727>)


## function set\_other\_Uppercase


```haxe
function set_other_Uppercase(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L730>)


## function set\_p


```haxe
function set_p(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L118>)


## function set\_pahawh\_Hmong


```haxe
function set_pahawh_Hmong(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L529>)


## function set\_palmyrene


```haxe
function set_palmyrene(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L532>)


## function set\_pattern\_Syntax


```haxe
function set_pattern_Syntax(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L733>)


## function set\_pattern\_White\_Space


```haxe
function set_pattern_White_Space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L736>)


## function set\_pau\_Cin\_Hau


```haxe
function set_pau_Cin_Hau(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L535>)


## function set\_pc


```haxe
function set_pc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L94>)


## function set\_pd


```haxe
function set_pd(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L97>)


## function set\_pe


```haxe
function set_pe(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L100>)


## function set\_pf


```haxe
function set_pf(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L103>)


## function set\_phags\_Pa


```haxe
function set_phags_Pa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L538>)


## function set\_phoenician


```haxe
function set_phoenician(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L541>)


## function set\_pi


```haxe
function set_pi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L106>)


## function set\_po


```haxe
function set_po(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L109>)


## function set\_prepended\_Concatenation\_Mark


```haxe
function set_prepended_Concatenation_Mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L739>)


## function set\_printRanges


```haxe
function set_printRanges(v:Array<stdgo._internal.unicode.RangeTable>):Array<stdgo._internal.unicode.RangeTable>
```


[\(view code\)](<./Unicode.hx#L145>)


## function set\_properties


```haxe
function set_properties(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L772>)


## function set\_ps


```haxe
function set_ps(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L112>)


## function set\_psalter\_Pahlavi


```haxe
function set_psalter_Pahlavi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L544>)


## function set\_punct


```haxe
function set_punct(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L115>)


## function set\_quotation\_Mark


```haxe
function set_quotation_Mark(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L742>)


## function set\_radical


```haxe
function set_radical(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L745>)


## function set\_regional\_Indicator


```haxe
function set_regional_Indicator(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L748>)


## function set\_rejang


```haxe
function set_rejang(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L547>)


## function set\_runic


```haxe
function set_runic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L550>)


## function set\_s


```haxe
function set_s(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L142>)


## function set\_samaritan


```haxe
function set_samaritan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L553>)


## function set\_saurashtra


```haxe
function set_saurashtra(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L556>)


## function set\_sc


```haxe
function set_sc(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L121>)


## function set\_scripts


```haxe
function set_scripts(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.RangeTable>>
```


[\(view code\)](<./Unicode.hx#L664>)


## function set\_sentence\_Terminal


```haxe
function set_sentence_Terminal(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L754>)


## function set\_sharada


```haxe
function set_sharada(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L559>)


## function set\_shavian


```haxe
function set_shavian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L562>)


## function set\_siddham


```haxe
function set_siddham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L565>)


## function set\_signWriting


```haxe
function set_signWriting(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L568>)


## function set\_sinhala


```haxe
function set_sinhala(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L571>)


## function set\_sk


```haxe
function set_sk(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L124>)


## function set\_sm


```haxe
function set_sm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L127>)


## function set\_so


```haxe
function set_so(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L130>)


## function set\_soft\_Dotted


```haxe
function set_soft_Dotted(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L757>)


## function set\_sogdian


```haxe
function set_sogdian(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L574>)


## function set\_sora\_Sompeng


```haxe
function set_sora_Sompeng(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L577>)


## function set\_soyombo


```haxe
function set_soyombo(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L580>)


## function set\_space


```haxe
function set_space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L133>)


## function set\_sterm


```haxe
function set_sterm(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L751>)


## function set\_sundanese


```haxe
function set_sundanese(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L583>)


## function set\_syloti\_Nagri


```haxe
function set_syloti_Nagri(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L586>)


## function set\_symbol


```haxe
function set_symbol(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L139>)


## function set\_syriac


```haxe
function set_syriac(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L589>)


## function set\_tagalog


```haxe
function set_tagalog(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L592>)


## function set\_tagbanwa


```haxe
function set_tagbanwa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L595>)


## function set\_tai\_Le


```haxe
function set_tai_Le(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L598>)


## function set\_tai\_Tham


```haxe
function set_tai_Tham(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L601>)


## function set\_tai\_Viet


```haxe
function set_tai_Viet(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L604>)


## function set\_takri


```haxe
function set_takri(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L607>)


## function set\_tamil


```haxe
function set_tamil(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L610>)


## function set\_tangsa


```haxe
function set_tangsa(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L613>)


## function set\_tangut


```haxe
function set_tangut(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L616>)


## function set\_telugu


```haxe
function set_telugu(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L619>)


## function set\_terminal\_Punctuation


```haxe
function set_terminal_Punctuation(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L760>)


## function set\_thaana


```haxe
function set_thaana(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L622>)


## function set\_thai


```haxe
function set_thai(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L625>)


## function set\_tibetan


```haxe
function set_tibetan(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L628>)


## function set\_tifinagh


```haxe
function set_tifinagh(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L631>)


## function set\_tirhuta


```haxe
function set_tirhuta(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L634>)


## function set\_title


```haxe
function set_title(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L148>)


## function set\_toto


```haxe
function set_toto(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L637>)


## function set\_turkishCase


```haxe
function set_turkishCase(v:stdgo._internal.unicode.SpecialCase):stdgo._internal.unicode.SpecialCase
```


[\(view code\)](<./Unicode.hx#L19>)


## function set\_ugaritic


```haxe
function set_ugaritic(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L640>)


## function set\_unified\_Ideograph


```haxe
function set_unified_Ideograph(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L763>)


## function set\_upper


```haxe
function set_upper(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L154>)


## function set\_vai


```haxe
function set_vai(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L643>)


## function set\_variation\_Selector


```haxe
function set_variation_Selector(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L766>)


## function set\_vithkuqi


```haxe
function set_vithkuqi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L646>)


## function set\_wancho


```haxe
function set_wancho(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L649>)


## function set\_warang\_Citi


```haxe
function set_warang_Citi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L652>)


## function set\_white\_Space


```haxe
function set_white_Space(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L769>)


## function set\_yezidi


```haxe
function set_yezidi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L655>)


## function set\_yi


```haxe
function set_yi(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L658>)


## function set\_z


```haxe
function set_z(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L136>)


## function set\_zanabazar\_Square


```haxe
function set_zanabazar_Square(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L661>)


## function set\_zl


```haxe
function set_zl(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L160>)


## function set\_zp


```haxe
function set_zp(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L163>)


## function set\_zs


```haxe
function set_zs(v:stdgo._internal.unicode.RangeTable):stdgo._internal.unicode.RangeTable
```


[\(view code\)](<./Unicode.hx#L166>)


## function simpleFold


```haxe
function simpleFold(r:Int):Int
```



SimpleFold iterates over Unicode code points equivalent under
the Unicode\-defined simple case folding. Among the code points
equivalent to rune \(including rune itself\), SimpleFold returns the
smallest rune \> r if one exists, or else the smallest rune \>= 0.
If r is not a valid Unicode code point, SimpleFold\(r\) returns r.  


For example:  

```
	SimpleFold('A') = 'a'
	SimpleFold('a') = 'A'
```
```
	SimpleFold('K') = 'k'
	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
	SimpleFold('\u212A') = 'K'
```
```
	SimpleFold('1') = '1'
```
```
	SimpleFold(-2) = -2
```
[\(view code\)](<./Unicode.hx#L906>)


## function to


```haxe
function to(_case:Int, r:Int):Int
```



To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.  

[\(view code\)](<./Unicode.hx#L873>)


## function toLower


```haxe
function toLower(r:Int):Int
```



ToLower maps the rune to lower case.  

[\(view code\)](<./Unicode.hx#L881>)


## function toTitle


```haxe
function toTitle(r:Int):Int
```



ToTitle maps the rune to title case.  

[\(view code\)](<./Unicode.hx#L885>)


## function toUpper


```haxe
function toUpper(r:Int):Int
```



ToUpper maps the rune to upper case.  

[\(view code\)](<./Unicode.hx#L877>)


# Typedefs


```haxe
import stdgo.unicode.*
```


## typedef CaseRange


```haxe
typedef CaseRange = Dynamic;
```


## typedef Range16


```haxe
typedef Range16 = Dynamic;
```


## typedef Range32


```haxe
typedef Range32 = Dynamic;
```


## typedef RangeTable


```haxe
typedef RangeTable = Dynamic;
```


## typedef SpecialCase


```haxe
typedef SpecialCase = stdgo._internal.unicode.SpecialCase;
```


## typedef SpecialCase\_asInterface


```haxe
typedef SpecialCase_asInterface = Dynamic;
```


## typedef SpecialCase\_static\_extension


```haxe
typedef SpecialCase_static_extension = Dynamic;
```


## typedef T\_d


```haxe
typedef T_d = stdgo._internal.unicode.T_d;
```


## typedef T\_foldPair


```haxe
typedef T_foldPair = Dynamic;
```


