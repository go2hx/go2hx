package stdgo.unicode;
var maxRune : stdgo.GoInt32 = 1114111i32;
var replacementChar : stdgo.GoInt32 = 65533i32;
var maxASCII : stdgo.GoInt32 = 127i32;
var maxLatin1 : stdgo.GoInt32 = 255i32;
var upperCase : stdgo.GoUInt64 = 0i32;
var lowerCase : stdgo.GoUInt64 = 1i32;
var titleCase : stdgo.GoUInt64 = 2i32;
var maxCase : stdgo.GoUInt64 = 3i32;
var upperLower : stdgo.GoInt32 = 1114112i32;
var version : stdgo.GoString = ("15.0.0" : stdgo.GoString);
var turkishCase(get, set) : SpecialCase;
private function get_turkishCase():SpecialCase return stdgo._internal.unicode.Unicode_turkishcase.turkishCase;
private function set_turkishCase(v:SpecialCase):stdgo._internal.unicode.Unicode_specialcase.SpecialCase {
        stdgo._internal.unicode.Unicode_turkishcase.turkishCase = v;
        return v;
    }
var azeriCase(get, set) : SpecialCase;
private function get_azeriCase():SpecialCase return stdgo._internal.unicode.Unicode_azericase.azeriCase;
private function set_azeriCase(v:SpecialCase):stdgo._internal.unicode.Unicode_specialcase.SpecialCase {
        stdgo._internal.unicode.Unicode_azericase.azeriCase = v;
        return v;
    }
var cc(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cc():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cc.cc;
private function set_cc(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cc.cc = v;
        return v;
    }
var cf(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cf():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cf.cf;
private function set_cf(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cf.cf = v;
        return v;
    }
var co(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_co():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_co.co;
private function set_co(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_co.co = v;
        return v;
    }
var cs(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cs():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cs.cs;
private function set_cs(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cs.cs = v;
        return v;
    }
var digit(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_digit():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_digit.digit;
private function set_digit(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_digit.digit = v;
        return v;
    }
var nd(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nd():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nd.nd;
private function set_nd(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nd.nd = v;
        return v;
    }
var letter(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_letter():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_letter.letter;
private function set_letter(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_letter.letter = v;
        return v;
    }
var l(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_l():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_l.l;
private function set_l(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_l.l = v;
        return v;
    }
var lm(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lm():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lm.lm;
private function set_lm(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lm.lm = v;
        return v;
    }
var lo(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lo():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lo.lo;
private function set_lo(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lo.lo = v;
        return v;
    }
var lower(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lower():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lower.lower;
private function set_lower(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lower.lower = v;
        return v;
    }
var ll(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ll():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ll.ll;
private function set_ll(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ll.ll = v;
        return v;
    }
var mark(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mark():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mark.mark;
private function set_mark(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mark.mark = v;
        return v;
    }
var m(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_m():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_m.m;
private function set_m(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_m.m = v;
        return v;
    }
var mc(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mc():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mc.mc;
private function set_mc(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mc.mc = v;
        return v;
    }
var me(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_me():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_me.me;
private function set_me(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_me.me = v;
        return v;
    }
var mn(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mn():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mn.mn;
private function set_mn(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mn.mn = v;
        return v;
    }
var nl(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nl():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nl.nl;
private function set_nl(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nl.nl = v;
        return v;
    }
var no(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_no():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_no.no;
private function set_no(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_no.no = v;
        return v;
    }
var number(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_number():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_number.number;
private function set_number(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_number.number = v;
        return v;
    }
var n(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_n():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_n.n;
private function set_n(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_n.n = v;
        return v;
    }
var other(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other.other;
private function set_other(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other.other = v;
        return v;
    }
var c(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_c():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_c.c;
private function set_c(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_c.c = v;
        return v;
    }
var pc(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pc():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pc.pc;
private function set_pc(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pc.pc = v;
        return v;
    }
var pd(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pd():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pd.pd;
private function set_pd(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pd.pd = v;
        return v;
    }
var pe(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pe():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pe.pe;
private function set_pe(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pe.pe = v;
        return v;
    }
var pf(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pf():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pf.pf;
private function set_pf(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pf.pf = v;
        return v;
    }
var pi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pi.pi;
private function set_pi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pi.pi = v;
        return v;
    }
var po(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_po():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_po.po;
private function set_po(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_po.po = v;
        return v;
    }
var ps(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ps():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ps.ps;
private function set_ps(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ps.ps = v;
        return v;
    }
var punct(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_punct():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_punct.punct;
private function set_punct(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_punct.punct = v;
        return v;
    }
var p(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_p():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_p.p;
private function set_p(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_p.p = v;
        return v;
    }
var sc(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sc():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sc.sc;
private function set_sc(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sc.sc = v;
        return v;
    }
var sk(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sk():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sk.sk;
private function set_sk(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sk.sk = v;
        return v;
    }
var sm(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sm():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sm.sm;
private function set_sm(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sm.sm = v;
        return v;
    }
var so(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_so():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_so.so;
private function set_so(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_so.so = v;
        return v;
    }
var space(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_space():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_space.space;
private function set_space(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_space.space = v;
        return v;
    }
var z(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_z():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_z.z;
private function set_z(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_z.z = v;
        return v;
    }
var symbol(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_symbol():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_symbol.symbol;
private function set_symbol(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_symbol.symbol = v;
        return v;
    }
var s(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_s():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_s.s;
private function set_s(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_s.s = v;
        return v;
    }
var printRanges(get, set) : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_printRanges():stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_printranges.printRanges;
private function set_printRanges(v:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_printranges.printRanges = v;
        return v;
    }
var title(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_title():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_title.title;
private function set_title(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_title.title = v;
        return v;
    }
var lt(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lt():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lt.lt;
private function set_lt(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lt.lt = v;
        return v;
    }
var upper(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_upper():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_upper.upper;
private function set_upper(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_upper.upper = v;
        return v;
    }
var lu(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lu():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lu.lu;
private function set_lu(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lu.lu = v;
        return v;
    }
var zl(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_zl():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_zl.zl;
private function set_zl(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_zl.zl = v;
        return v;
    }
var zp(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_zp():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_zp.zp;
private function set_zp(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_zp.zp = v;
        return v;
    }
var zs(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_zs():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_zs.zs;
private function set_zs(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_zs.zs = v;
        return v;
    }
var graphicRanges(get, set) : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_graphicRanges():stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_graphicranges.graphicRanges;
private function set_graphicRanges(v:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_graphicranges.graphicRanges = v;
        return v;
    }
var categories(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_categories():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_categories.categories;
private function set_categories(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_categories.categories = v;
        return v;
    }
var adlam(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_adlam():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_adlam.adlam;
private function set_adlam(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_adlam.adlam = v;
        return v;
    }
var ahom(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ahom():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ahom.ahom;
private function set_ahom(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ahom.ahom = v;
        return v;
    }
var anatolian_Hieroglyphs(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_anatolian_Hieroglyphs():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_anatolian_hieroglyphs.anatolian_Hieroglyphs;
private function set_anatolian_Hieroglyphs(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_anatolian_hieroglyphs.anatolian_Hieroglyphs = v;
        return v;
    }
var arabic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_arabic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_arabic.arabic;
private function set_arabic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_arabic.arabic = v;
        return v;
    }
var armenian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_armenian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_armenian.armenian;
private function set_armenian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_armenian.armenian = v;
        return v;
    }
var avestan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_avestan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_avestan.avestan;
private function set_avestan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_avestan.avestan = v;
        return v;
    }
var balinese(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_balinese():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_balinese.balinese;
private function set_balinese(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_balinese.balinese = v;
        return v;
    }
var bamum(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bamum():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bamum.bamum;
private function set_bamum(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bamum.bamum = v;
        return v;
    }
var bassa_Vah(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bassa_Vah():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bassa_vah.bassa_Vah;
private function set_bassa_Vah(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bassa_vah.bassa_Vah = v;
        return v;
    }
var batak(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_batak():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_batak.batak;
private function set_batak(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_batak.batak = v;
        return v;
    }
var bengali(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bengali():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bengali.bengali;
private function set_bengali(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bengali.bengali = v;
        return v;
    }
var bhaiksuki(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bhaiksuki():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bhaiksuki.bhaiksuki;
private function set_bhaiksuki(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bhaiksuki.bhaiksuki = v;
        return v;
    }
var bopomofo(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bopomofo():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bopomofo.bopomofo;
private function set_bopomofo(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bopomofo.bopomofo = v;
        return v;
    }
var brahmi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_brahmi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_brahmi.brahmi;
private function set_brahmi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_brahmi.brahmi = v;
        return v;
    }
var braille(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_braille():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_braille.braille;
private function set_braille(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_braille.braille = v;
        return v;
    }
var buginese(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_buginese():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_buginese.buginese;
private function set_buginese(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_buginese.buginese = v;
        return v;
    }
var buhid(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_buhid():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_buhid.buhid;
private function set_buhid(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_buhid.buhid = v;
        return v;
    }
var canadian_Aboriginal(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_canadian_Aboriginal():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_canadian_aboriginal.canadian_Aboriginal;
private function set_canadian_Aboriginal(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_canadian_aboriginal.canadian_Aboriginal = v;
        return v;
    }
var carian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_carian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_carian.carian;
private function set_carian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_carian.carian = v;
        return v;
    }
var caucasian_Albanian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_caucasian_Albanian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_caucasian_albanian.caucasian_Albanian;
private function set_caucasian_Albanian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_caucasian_albanian.caucasian_Albanian = v;
        return v;
    }
var chakma(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_chakma():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_chakma.chakma;
private function set_chakma(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_chakma.chakma = v;
        return v;
    }
var cham(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cham():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cham.cham;
private function set_cham(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cham.cham = v;
        return v;
    }
var cherokee(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cherokee():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cherokee.cherokee;
private function set_cherokee(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cherokee.cherokee = v;
        return v;
    }
var chorasmian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_chorasmian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_chorasmian.chorasmian;
private function set_chorasmian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_chorasmian.chorasmian = v;
        return v;
    }
var common(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_common():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_common.common;
private function set_common(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_common.common = v;
        return v;
    }
var coptic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_coptic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_coptic.coptic;
private function set_coptic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_coptic.coptic = v;
        return v;
    }
var cuneiform(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cuneiform():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cuneiform.cuneiform;
private function set_cuneiform(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cuneiform.cuneiform = v;
        return v;
    }
var cypriot(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cypriot():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cypriot.cypriot;
private function set_cypriot(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cypriot.cypriot = v;
        return v;
    }
var cypro_Minoan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cypro_Minoan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cypro_minoan.cypro_Minoan;
private function set_cypro_Minoan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cypro_minoan.cypro_Minoan = v;
        return v;
    }
var cyrillic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_cyrillic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_cyrillic.cyrillic;
private function set_cyrillic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_cyrillic.cyrillic = v;
        return v;
    }
var deseret(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_deseret():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_deseret.deseret;
private function set_deseret(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_deseret.deseret = v;
        return v;
    }
var devanagari(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_devanagari():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_devanagari.devanagari;
private function set_devanagari(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_devanagari.devanagari = v;
        return v;
    }
var dives_Akuru(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_dives_Akuru():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_dives_akuru.dives_Akuru;
private function set_dives_Akuru(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_dives_akuru.dives_Akuru = v;
        return v;
    }
var dogra(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_dogra():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_dogra.dogra;
private function set_dogra(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_dogra.dogra = v;
        return v;
    }
var duployan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_duployan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_duployan.duployan;
private function set_duployan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_duployan.duployan = v;
        return v;
    }
var egyptian_Hieroglyphs(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_egyptian_Hieroglyphs():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_egyptian_hieroglyphs.egyptian_Hieroglyphs;
private function set_egyptian_Hieroglyphs(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_egyptian_hieroglyphs.egyptian_Hieroglyphs = v;
        return v;
    }
var elbasan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_elbasan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_elbasan.elbasan;
private function set_elbasan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_elbasan.elbasan = v;
        return v;
    }
var elymaic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_elymaic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_elymaic.elymaic;
private function set_elymaic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_elymaic.elymaic = v;
        return v;
    }
var ethiopic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ethiopic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ethiopic.ethiopic;
private function set_ethiopic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ethiopic.ethiopic = v;
        return v;
    }
var georgian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_georgian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_georgian.georgian;
private function set_georgian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_georgian.georgian = v;
        return v;
    }
var glagolitic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_glagolitic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_glagolitic.glagolitic;
private function set_glagolitic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_glagolitic.glagolitic = v;
        return v;
    }
var gothic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_gothic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_gothic.gothic;
private function set_gothic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_gothic.gothic = v;
        return v;
    }
var grantha(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_grantha():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_grantha.grantha;
private function set_grantha(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_grantha.grantha = v;
        return v;
    }
var greek(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_greek():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_greek.greek;
private function set_greek(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_greek.greek = v;
        return v;
    }
var gujarati(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_gujarati():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_gujarati.gujarati;
private function set_gujarati(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_gujarati.gujarati = v;
        return v;
    }
var gunjala_Gondi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_gunjala_Gondi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_gunjala_gondi.gunjala_Gondi;
private function set_gunjala_Gondi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_gunjala_gondi.gunjala_Gondi = v;
        return v;
    }
var gurmukhi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_gurmukhi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_gurmukhi.gurmukhi;
private function set_gurmukhi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_gurmukhi.gurmukhi = v;
        return v;
    }
var han(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_han():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_han.han;
private function set_han(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_han.han = v;
        return v;
    }
var hangul(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hangul():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hangul.hangul;
private function set_hangul(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hangul.hangul = v;
        return v;
    }
var hanifi_Rohingya(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hanifi_Rohingya():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hanifi_rohingya.hanifi_Rohingya;
private function set_hanifi_Rohingya(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hanifi_rohingya.hanifi_Rohingya = v;
        return v;
    }
var hanunoo(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hanunoo():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hanunoo.hanunoo;
private function set_hanunoo(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hanunoo.hanunoo = v;
        return v;
    }
var hatran(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hatran():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hatran.hatran;
private function set_hatran(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hatran.hatran = v;
        return v;
    }
var hebrew(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hebrew():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hebrew.hebrew;
private function set_hebrew(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hebrew.hebrew = v;
        return v;
    }
var hiragana(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hiragana():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hiragana.hiragana;
private function set_hiragana(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hiragana.hiragana = v;
        return v;
    }
var imperial_Aramaic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_imperial_Aramaic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_imperial_aramaic.imperial_Aramaic;
private function set_imperial_Aramaic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_imperial_aramaic.imperial_Aramaic = v;
        return v;
    }
var inherited(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_inherited():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_inherited.inherited;
private function set_inherited(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_inherited.inherited = v;
        return v;
    }
var inscriptional_Pahlavi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_inscriptional_Pahlavi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_inscriptional_pahlavi.inscriptional_Pahlavi;
private function set_inscriptional_Pahlavi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_inscriptional_pahlavi.inscriptional_Pahlavi = v;
        return v;
    }
var inscriptional_Parthian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_inscriptional_Parthian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_inscriptional_parthian.inscriptional_Parthian;
private function set_inscriptional_Parthian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_inscriptional_parthian.inscriptional_Parthian = v;
        return v;
    }
var javanese(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_javanese():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_javanese.javanese;
private function set_javanese(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_javanese.javanese = v;
        return v;
    }
var kaithi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_kaithi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_kaithi.kaithi;
private function set_kaithi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_kaithi.kaithi = v;
        return v;
    }
var kannada(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_kannada():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_kannada.kannada;
private function set_kannada(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_kannada.kannada = v;
        return v;
    }
var katakana(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_katakana():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_katakana.katakana;
private function set_katakana(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_katakana.katakana = v;
        return v;
    }
var kawi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_kawi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_kawi.kawi;
private function set_kawi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_kawi.kawi = v;
        return v;
    }
var kayah_Li(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_kayah_Li():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_kayah_li.kayah_Li;
private function set_kayah_Li(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_kayah_li.kayah_Li = v;
        return v;
    }
var kharoshthi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_kharoshthi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_kharoshthi.kharoshthi;
private function set_kharoshthi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_kharoshthi.kharoshthi = v;
        return v;
    }
var khitan_Small_Script(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_khitan_Small_Script():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_khitan_small_script.khitan_Small_Script;
private function set_khitan_Small_Script(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_khitan_small_script.khitan_Small_Script = v;
        return v;
    }
var khmer(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_khmer():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_khmer.khmer;
private function set_khmer(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_khmer.khmer = v;
        return v;
    }
var khojki(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_khojki():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_khojki.khojki;
private function set_khojki(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_khojki.khojki = v;
        return v;
    }
var khudawadi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_khudawadi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_khudawadi.khudawadi;
private function set_khudawadi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_khudawadi.khudawadi = v;
        return v;
    }
var lao(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lao():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lao.lao;
private function set_lao(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lao.lao = v;
        return v;
    }
var latin(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_latin():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_latin.latin;
private function set_latin(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_latin.latin = v;
        return v;
    }
var lepcha(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lepcha():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lepcha.lepcha;
private function set_lepcha(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lepcha.lepcha = v;
        return v;
    }
var limbu(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_limbu():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_limbu.limbu;
private function set_limbu(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_limbu.limbu = v;
        return v;
    }
var linear_A(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_linear_A():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_linear_a.linear_A;
private function set_linear_A(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_linear_a.linear_A = v;
        return v;
    }
var linear_B(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_linear_B():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_linear_b.linear_B;
private function set_linear_B(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_linear_b.linear_B = v;
        return v;
    }
var lisu(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lisu():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lisu.lisu;
private function set_lisu(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lisu.lisu = v;
        return v;
    }
var lycian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lycian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lycian.lycian;
private function set_lycian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lycian.lycian = v;
        return v;
    }
var lydian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_lydian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_lydian.lydian;
private function set_lydian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_lydian.lydian = v;
        return v;
    }
var mahajani(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mahajani():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mahajani.mahajani;
private function set_mahajani(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mahajani.mahajani = v;
        return v;
    }
var makasar(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_makasar():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_makasar.makasar;
private function set_makasar(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_makasar.makasar = v;
        return v;
    }
var malayalam(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_malayalam():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_malayalam.malayalam;
private function set_malayalam(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_malayalam.malayalam = v;
        return v;
    }
var mandaic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mandaic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mandaic.mandaic;
private function set_mandaic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mandaic.mandaic = v;
        return v;
    }
var manichaean(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_manichaean():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_manichaean.manichaean;
private function set_manichaean(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_manichaean.manichaean = v;
        return v;
    }
var marchen(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_marchen():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_marchen.marchen;
private function set_marchen(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_marchen.marchen = v;
        return v;
    }
var masaram_Gondi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_masaram_Gondi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_masaram_gondi.masaram_Gondi;
private function set_masaram_Gondi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_masaram_gondi.masaram_Gondi = v;
        return v;
    }
var medefaidrin(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_medefaidrin():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_medefaidrin.medefaidrin;
private function set_medefaidrin(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_medefaidrin.medefaidrin = v;
        return v;
    }
var meetei_Mayek(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_meetei_Mayek():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_meetei_mayek.meetei_Mayek;
private function set_meetei_Mayek(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_meetei_mayek.meetei_Mayek = v;
        return v;
    }
var mende_Kikakui(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mende_Kikakui():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mende_kikakui.mende_Kikakui;
private function set_mende_Kikakui(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mende_kikakui.mende_Kikakui = v;
        return v;
    }
var meroitic_Cursive(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_meroitic_Cursive():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_meroitic_cursive.meroitic_Cursive;
private function set_meroitic_Cursive(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_meroitic_cursive.meroitic_Cursive = v;
        return v;
    }
var meroitic_Hieroglyphs(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_meroitic_Hieroglyphs():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_meroitic_hieroglyphs.meroitic_Hieroglyphs;
private function set_meroitic_Hieroglyphs(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_meroitic_hieroglyphs.meroitic_Hieroglyphs = v;
        return v;
    }
var miao(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_miao():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_miao.miao;
private function set_miao(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_miao.miao = v;
        return v;
    }
var modi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_modi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_modi.modi;
private function set_modi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_modi.modi = v;
        return v;
    }
var mongolian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mongolian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mongolian.mongolian;
private function set_mongolian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mongolian.mongolian = v;
        return v;
    }
var mro(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_mro():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_mro.mro;
private function set_mro(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_mro.mro = v;
        return v;
    }
var multani(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_multani():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_multani.multani;
private function set_multani(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_multani.multani = v;
        return v;
    }
var myanmar(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_myanmar():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_myanmar.myanmar;
private function set_myanmar(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_myanmar.myanmar = v;
        return v;
    }
var nabataean(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nabataean():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nabataean.nabataean;
private function set_nabataean(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nabataean.nabataean = v;
        return v;
    }
var nag_Mundari(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nag_Mundari():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nag_mundari.nag_Mundari;
private function set_nag_Mundari(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nag_mundari.nag_Mundari = v;
        return v;
    }
var nandinagari(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nandinagari():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nandinagari.nandinagari;
private function set_nandinagari(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nandinagari.nandinagari = v;
        return v;
    }
var new_Tai_Lue(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_new_Tai_Lue():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_new_tai_lue.new_Tai_Lue;
private function set_new_Tai_Lue(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_new_tai_lue.new_Tai_Lue = v;
        return v;
    }
var newa(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_newa():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_newa.newa;
private function set_newa(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_newa.newa = v;
        return v;
    }
var nko(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nko():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nko.nko;
private function set_nko(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nko.nko = v;
        return v;
    }
var nushu(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nushu():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nushu.nushu;
private function set_nushu(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nushu.nushu = v;
        return v;
    }
var nyiakeng_Puachue_Hmong(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_nyiakeng_Puachue_Hmong():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_nyiakeng_puachue_hmong.nyiakeng_Puachue_Hmong;
private function set_nyiakeng_Puachue_Hmong(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_nyiakeng_puachue_hmong.nyiakeng_Puachue_Hmong = v;
        return v;
    }
var ogham(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ogham():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ogham.ogham;
private function set_ogham(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ogham.ogham = v;
        return v;
    }
var ol_Chiki(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ol_Chiki():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ol_chiki.ol_Chiki;
private function set_ol_Chiki(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ol_chiki.ol_Chiki = v;
        return v;
    }
var old_Hungarian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Hungarian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_hungarian.old_Hungarian;
private function set_old_Hungarian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_hungarian.old_Hungarian = v;
        return v;
    }
var old_Italic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Italic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_italic.old_Italic;
private function set_old_Italic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_italic.old_Italic = v;
        return v;
    }
var old_North_Arabian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_North_Arabian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_north_arabian.old_North_Arabian;
private function set_old_North_Arabian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_north_arabian.old_North_Arabian = v;
        return v;
    }
var old_Permic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Permic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_permic.old_Permic;
private function set_old_Permic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_permic.old_Permic = v;
        return v;
    }
var old_Persian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Persian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_persian.old_Persian;
private function set_old_Persian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_persian.old_Persian = v;
        return v;
    }
var old_Sogdian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Sogdian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_sogdian.old_Sogdian;
private function set_old_Sogdian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_sogdian.old_Sogdian = v;
        return v;
    }
var old_South_Arabian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_South_Arabian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_south_arabian.old_South_Arabian;
private function set_old_South_Arabian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_south_arabian.old_South_Arabian = v;
        return v;
    }
var old_Turkic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Turkic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_turkic.old_Turkic;
private function set_old_Turkic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_turkic.old_Turkic = v;
        return v;
    }
var old_Uyghur(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_old_Uyghur():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_old_uyghur.old_Uyghur;
private function set_old_Uyghur(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_old_uyghur.old_Uyghur = v;
        return v;
    }
var oriya(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_oriya():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_oriya.oriya;
private function set_oriya(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_oriya.oriya = v;
        return v;
    }
var osage(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_osage():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_osage.osage;
private function set_osage(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_osage.osage = v;
        return v;
    }
var osmanya(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_osmanya():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_osmanya.osmanya;
private function set_osmanya(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_osmanya.osmanya = v;
        return v;
    }
var pahawh_Hmong(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pahawh_Hmong():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pahawh_hmong.pahawh_Hmong;
private function set_pahawh_Hmong(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pahawh_hmong.pahawh_Hmong = v;
        return v;
    }
var palmyrene(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_palmyrene():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_palmyrene.palmyrene;
private function set_palmyrene(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_palmyrene.palmyrene = v;
        return v;
    }
var pau_Cin_Hau(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pau_Cin_Hau():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pau_cin_hau.pau_Cin_Hau;
private function set_pau_Cin_Hau(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pau_cin_hau.pau_Cin_Hau = v;
        return v;
    }
var phags_Pa(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_phags_Pa():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_phags_pa.phags_Pa;
private function set_phags_Pa(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_phags_pa.phags_Pa = v;
        return v;
    }
var phoenician(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_phoenician():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_phoenician.phoenician;
private function set_phoenician(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_phoenician.phoenician = v;
        return v;
    }
var psalter_Pahlavi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_psalter_Pahlavi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_psalter_pahlavi.psalter_Pahlavi;
private function set_psalter_Pahlavi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_psalter_pahlavi.psalter_Pahlavi = v;
        return v;
    }
var rejang(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_rejang():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_rejang.rejang;
private function set_rejang(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_rejang.rejang = v;
        return v;
    }
var runic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_runic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_runic.runic;
private function set_runic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_runic.runic = v;
        return v;
    }
var samaritan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_samaritan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_samaritan.samaritan;
private function set_samaritan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_samaritan.samaritan = v;
        return v;
    }
var saurashtra(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_saurashtra():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_saurashtra.saurashtra;
private function set_saurashtra(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_saurashtra.saurashtra = v;
        return v;
    }
var sharada(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sharada():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sharada.sharada;
private function set_sharada(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sharada.sharada = v;
        return v;
    }
var shavian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_shavian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_shavian.shavian;
private function set_shavian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_shavian.shavian = v;
        return v;
    }
var siddham(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_siddham():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_siddham.siddham;
private function set_siddham(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_siddham.siddham = v;
        return v;
    }
var signWriting(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_signWriting():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_signwriting.signWriting;
private function set_signWriting(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_signwriting.signWriting = v;
        return v;
    }
var sinhala(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sinhala():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sinhala.sinhala;
private function set_sinhala(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sinhala.sinhala = v;
        return v;
    }
var sogdian(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sogdian():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sogdian.sogdian;
private function set_sogdian(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sogdian.sogdian = v;
        return v;
    }
var sora_Sompeng(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sora_Sompeng():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sora_sompeng.sora_Sompeng;
private function set_sora_Sompeng(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sora_sompeng.sora_Sompeng = v;
        return v;
    }
var soyombo(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_soyombo():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_soyombo.soyombo;
private function set_soyombo(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_soyombo.soyombo = v;
        return v;
    }
var sundanese(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sundanese():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sundanese.sundanese;
private function set_sundanese(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sundanese.sundanese = v;
        return v;
    }
var syloti_Nagri(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_syloti_Nagri():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_syloti_nagri.syloti_Nagri;
private function set_syloti_Nagri(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_syloti_nagri.syloti_Nagri = v;
        return v;
    }
var syriac(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_syriac():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_syriac.syriac;
private function set_syriac(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_syriac.syriac = v;
        return v;
    }
var tagalog(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tagalog():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tagalog.tagalog;
private function set_tagalog(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tagalog.tagalog = v;
        return v;
    }
var tagbanwa(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tagbanwa():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tagbanwa.tagbanwa;
private function set_tagbanwa(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tagbanwa.tagbanwa = v;
        return v;
    }
var tai_Le(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tai_Le():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tai_le.tai_Le;
private function set_tai_Le(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tai_le.tai_Le = v;
        return v;
    }
var tai_Tham(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tai_Tham():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tai_tham.tai_Tham;
private function set_tai_Tham(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tai_tham.tai_Tham = v;
        return v;
    }
var tai_Viet(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tai_Viet():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tai_viet.tai_Viet;
private function set_tai_Viet(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tai_viet.tai_Viet = v;
        return v;
    }
var takri(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_takri():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_takri.takri;
private function set_takri(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_takri.takri = v;
        return v;
    }
var tamil(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tamil():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tamil.tamil;
private function set_tamil(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tamil.tamil = v;
        return v;
    }
var tangsa(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tangsa():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tangsa.tangsa;
private function set_tangsa(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tangsa.tangsa = v;
        return v;
    }
var tangut(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tangut():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tangut.tangut;
private function set_tangut(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tangut.tangut = v;
        return v;
    }
var telugu(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_telugu():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_telugu.telugu;
private function set_telugu(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_telugu.telugu = v;
        return v;
    }
var thaana(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_thaana():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_thaana.thaana;
private function set_thaana(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_thaana.thaana = v;
        return v;
    }
var thai(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_thai():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_thai.thai;
private function set_thai(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_thai.thai = v;
        return v;
    }
var tibetan(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tibetan():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tibetan.tibetan;
private function set_tibetan(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tibetan.tibetan = v;
        return v;
    }
var tifinagh(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tifinagh():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tifinagh.tifinagh;
private function set_tifinagh(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tifinagh.tifinagh = v;
        return v;
    }
var tirhuta(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_tirhuta():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_tirhuta.tirhuta;
private function set_tirhuta(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_tirhuta.tirhuta = v;
        return v;
    }
var toto(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_toto():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_toto.toto;
private function set_toto(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_toto.toto = v;
        return v;
    }
var ugaritic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ugaritic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ugaritic.ugaritic;
private function set_ugaritic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ugaritic.ugaritic = v;
        return v;
    }
var vai(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_vai():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_vai.vai;
private function set_vai(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_vai.vai = v;
        return v;
    }
var vithkuqi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_vithkuqi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_vithkuqi.vithkuqi;
private function set_vithkuqi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_vithkuqi.vithkuqi = v;
        return v;
    }
var wancho(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_wancho():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_wancho.wancho;
private function set_wancho(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_wancho.wancho = v;
        return v;
    }
var warang_Citi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_warang_Citi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_warang_citi.warang_Citi;
private function set_warang_Citi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_warang_citi.warang_Citi = v;
        return v;
    }
var yezidi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_yezidi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_yezidi.yezidi;
private function set_yezidi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_yezidi.yezidi = v;
        return v;
    }
var yi(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_yi():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_yi.yi;
private function set_yi(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_yi.yi = v;
        return v;
    }
var zanabazar_Square(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_zanabazar_Square():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_zanabazar_square.zanabazar_Square;
private function set_zanabazar_Square(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_zanabazar_square.zanabazar_Square = v;
        return v;
    }
var scripts(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_scripts():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_scripts.scripts;
private function set_scripts(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_scripts.scripts = v;
        return v;
    }
var aSCII_Hex_Digit(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_aSCII_Hex_Digit():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ascii_hex_digit.aSCII_Hex_Digit;
private function set_aSCII_Hex_Digit(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ascii_hex_digit.aSCII_Hex_Digit = v;
        return v;
    }
var bidi_Control(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_bidi_Control():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_bidi_control.bidi_Control;
private function set_bidi_Control(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_bidi_control.bidi_Control = v;
        return v;
    }
var dash(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_dash():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_dash.dash;
private function set_dash(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_dash.dash = v;
        return v;
    }
var deprecated(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_deprecated():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_deprecated.deprecated;
private function set_deprecated(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_deprecated.deprecated = v;
        return v;
    }
var diacritic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_diacritic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_diacritic.diacritic;
private function set_diacritic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_diacritic.diacritic = v;
        return v;
    }
var extender(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_extender():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_extender.extender;
private function set_extender(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_extender.extender = v;
        return v;
    }
var hex_Digit(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hex_Digit():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hex_digit.hex_Digit;
private function set_hex_Digit(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hex_digit.hex_Digit = v;
        return v;
    }
var hyphen(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_hyphen():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_hyphen.hyphen;
private function set_hyphen(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_hyphen.hyphen = v;
        return v;
    }
var iDS_Binary_Operator(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_iDS_Binary_Operator():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ids_binary_operator.iDS_Binary_Operator;
private function set_iDS_Binary_Operator(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ids_binary_operator.iDS_Binary_Operator = v;
        return v;
    }
var iDS_Trinary_Operator(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_iDS_Trinary_Operator():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ids_trinary_operator.iDS_Trinary_Operator;
private function set_iDS_Trinary_Operator(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ids_trinary_operator.iDS_Trinary_Operator = v;
        return v;
    }
var ideographic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_ideographic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_ideographic.ideographic;
private function set_ideographic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_ideographic.ideographic = v;
        return v;
    }
var join_Control(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_join_Control():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_join_control.join_Control;
private function set_join_Control(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_join_control.join_Control = v;
        return v;
    }
var logical_Order_Exception(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_logical_Order_Exception():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_logical_order_exception.logical_Order_Exception;
private function set_logical_Order_Exception(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_logical_order_exception.logical_Order_Exception = v;
        return v;
    }
var noncharacter_Code_Point(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_noncharacter_Code_Point():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_noncharacter_code_point.noncharacter_Code_Point;
private function set_noncharacter_Code_Point(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_noncharacter_code_point.noncharacter_Code_Point = v;
        return v;
    }
var other_Alphabetic(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Alphabetic():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_alphabetic.other_Alphabetic;
private function set_other_Alphabetic(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_alphabetic.other_Alphabetic = v;
        return v;
    }
var other_Default_Ignorable_Code_Point(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Default_Ignorable_Code_Point():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_default_ignorable_code_point.other_Default_Ignorable_Code_Point;
private function set_other_Default_Ignorable_Code_Point(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_default_ignorable_code_point.other_Default_Ignorable_Code_Point = v;
        return v;
    }
var other_Grapheme_Extend(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Grapheme_Extend():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_grapheme_extend.other_Grapheme_Extend;
private function set_other_Grapheme_Extend(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_grapheme_extend.other_Grapheme_Extend = v;
        return v;
    }
var other_ID_Continue(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_ID_Continue():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_id_continue.other_ID_Continue;
private function set_other_ID_Continue(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_id_continue.other_ID_Continue = v;
        return v;
    }
var other_ID_Start(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_ID_Start():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_id_start.other_ID_Start;
private function set_other_ID_Start(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_id_start.other_ID_Start = v;
        return v;
    }
var other_Lowercase(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Lowercase():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_lowercase.other_Lowercase;
private function set_other_Lowercase(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_lowercase.other_Lowercase = v;
        return v;
    }
var other_Math(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Math():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_math.other_Math;
private function set_other_Math(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_math.other_Math = v;
        return v;
    }
var other_Uppercase(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_other_Uppercase():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_other_uppercase.other_Uppercase;
private function set_other_Uppercase(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_other_uppercase.other_Uppercase = v;
        return v;
    }
var pattern_Syntax(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pattern_Syntax():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pattern_syntax.pattern_Syntax;
private function set_pattern_Syntax(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pattern_syntax.pattern_Syntax = v;
        return v;
    }
var pattern_White_Space(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_pattern_White_Space():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_pattern_white_space.pattern_White_Space;
private function set_pattern_White_Space(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_pattern_white_space.pattern_White_Space = v;
        return v;
    }
var prepended_Concatenation_Mark(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_prepended_Concatenation_Mark():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_prepended_concatenation_mark.prepended_Concatenation_Mark;
private function set_prepended_Concatenation_Mark(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_prepended_concatenation_mark.prepended_Concatenation_Mark = v;
        return v;
    }
var quotation_Mark(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_quotation_Mark():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_quotation_mark.quotation_Mark;
private function set_quotation_Mark(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_quotation_mark.quotation_Mark = v;
        return v;
    }
var radical(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_radical():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_radical.radical;
private function set_radical(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_radical.radical = v;
        return v;
    }
var regional_Indicator(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_regional_Indicator():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_regional_indicator.regional_Indicator;
private function set_regional_Indicator(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_regional_indicator.regional_Indicator = v;
        return v;
    }
var sTerm(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sTerm():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sterm.sTerm;
private function set_sTerm(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sterm.sTerm = v;
        return v;
    }
var sentence_Terminal(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_sentence_Terminal():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_sentence_terminal.sentence_Terminal;
private function set_sentence_Terminal(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_sentence_terminal.sentence_Terminal = v;
        return v;
    }
var soft_Dotted(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_soft_Dotted():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_soft_dotted.soft_Dotted;
private function set_soft_Dotted(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_soft_dotted.soft_Dotted = v;
        return v;
    }
var terminal_Punctuation(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_terminal_Punctuation():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_terminal_punctuation.terminal_Punctuation;
private function set_terminal_Punctuation(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_terminal_punctuation.terminal_Punctuation = v;
        return v;
    }
var unified_Ideograph(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_unified_Ideograph():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_unified_ideograph.unified_Ideograph;
private function set_unified_Ideograph(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_unified_ideograph.unified_Ideograph = v;
        return v;
    }
var variation_Selector(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_variation_Selector():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_variation_selector.variation_Selector;
private function set_variation_Selector(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_variation_selector.variation_Selector = v;
        return v;
    }
var white_Space(get, set) : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>;
private function get_white_Space():stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> return stdgo._internal.unicode.Unicode_white_space.white_Space;
private function set_white_Space(v:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> {
        stdgo._internal.unicode.Unicode_white_space.white_Space = v;
        return v;
    }
var properties(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_properties():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_properties.properties;
private function set_properties(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_properties.properties = v;
        return v;
    }
var caseRanges(get, set) : stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange>;
private function get_caseRanges():stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange> return stdgo._internal.unicode.Unicode_caseranges.caseRanges;
private function set_caseRanges(v:stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange>):stdgo.Slice<stdgo._internal.unicode.Unicode_caserange.CaseRange> {
        stdgo._internal.unicode.Unicode_caseranges.caseRanges = v;
        return v;
    }
var foldCategory(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_foldCategory():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_foldcategory.foldCategory;
private function set_foldCategory(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_foldcategory.foldCategory = v;
        return v;
    }
var foldScript(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>;
private function get_foldScript():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> return stdgo._internal.unicode.Unicode_foldscript.foldScript;
private function set_foldScript(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>> {
        stdgo._internal.unicode.Unicode_foldscript.foldScript = v;
        return v;
    }
typedef RangeTable = stdgo._internal.unicode.Unicode_rangetable.RangeTable;
typedef Range16 = stdgo._internal.unicode.Unicode_range16.Range16;
typedef Range32 = stdgo._internal.unicode.Unicode_range32.Range32;
typedef CaseRange = stdgo._internal.unicode.Unicode_caserange.CaseRange;
typedef SpecialCase = stdgo._internal.unicode.Unicode_specialcase.SpecialCase;
typedef RangeTablePointer = stdgo._internal.unicode.Unicode_rangetablepointer.RangeTablePointer;
typedef Range16Pointer = stdgo._internal.unicode.Unicode_range16pointer.Range16Pointer;
typedef Range32Pointer = stdgo._internal.unicode.Unicode_range32pointer.Range32Pointer;
typedef CaseRangePointer = stdgo._internal.unicode.Unicode_caserangepointer.CaseRangePointer;
typedef SpecialCasePointer = stdgo._internal.unicode.Unicode_specialcasepointer.SpecialCasePointer;
/**
    * Package unicode provides data and functions to test some properties of
    * Unicode code points.
**/
class Unicode {
    /**
        * IsDigit reports whether the rune is a decimal digit.
    **/
    static public inline function isDigit(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isdigit.isDigit(_r);
    /**
        * IsGraphic reports whether the rune is defined as a Graphic by Unicode.
        * Such characters include letters, marks, numbers, punctuation, symbols, and
        * spaces, from categories L, M, N, P, S, Zs.
    **/
    static public inline function isGraphic(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r);
    /**
        * IsPrint reports whether the rune is defined as printable by Go. Such
        * characters include letters, marks, numbers, punctuation, symbols, and the
        * ASCII space character, from categories L, M, N, P, S and the ASCII space
        * character. This categorization is the same as IsGraphic except that the
        * only spacing character is ASCII space, U+0020.
    **/
    static public inline function isPrint(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isprint.isPrint(_r);
    /**
        * IsOneOf reports whether the rune is a member of one of the ranges.
        * The function "In" provides a nicer signature and should be used in preference to IsOneOf.
    **/
    static public inline function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>, _r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isoneof.isOneOf(_ranges, _r);
    /**
        * In reports whether the rune is a member of one of the ranges.
    **/
    static public inline function in_(_r:stdgo.GoInt32, _ranges:haxe.Rest<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>):Bool return stdgo._internal.unicode.Unicode_in_.in_(_r, ...[for (i in _ranges) i]);
    /**
        * IsControl reports whether the rune is a control character.
        * The C (Other) Unicode category includes more code points
        * such as surrogates; use Is(C, r) to test for them.
    **/
    static public inline function isControl(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_iscontrol.isControl(_r);
    /**
        * IsLetter reports whether the rune is a letter (category L).
    **/
    static public inline function isLetter(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isletter.isLetter(_r);
    /**
        * IsMark reports whether the rune is a mark character (category M).
    **/
    static public inline function isMark(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_ismark.isMark(_r);
    /**
        * IsNumber reports whether the rune is a number (category N).
    **/
    static public inline function isNumber(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isnumber.isNumber(_r);
    /**
        * IsPunct reports whether the rune is a Unicode punctuation character
        * (category P).
    **/
    static public inline function isPunct(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_ispunct.isPunct(_r);
    /**
        * IsSpace reports whether the rune is a space character as defined
        * by Unicode's White Space property; in the Latin-1 space
        * this is
        * 
        * 	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
        * 
        * Other definitions of spacing characters are set by category
        * Z and property Pattern_White_Space.
    **/
    static public inline function isSpace(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isspace.isSpace(_r);
    /**
        * IsSymbol reports whether the rune is a symbolic character.
    **/
    static public inline function isSymbol(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_issymbol.isSymbol(_r);
    /**
        * Is reports whether the rune is in the specified table of ranges.
    **/
    static public inline function is_(_rangeTab:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>, _r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_is_.is_(_rangeTab, _r);
    /**
        * IsUpper reports whether the rune is an upper case letter.
    **/
    static public inline function isUpper(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_isupper.isUpper(_r);
    /**
        * IsLower reports whether the rune is a lower case letter.
    **/
    static public inline function isLower(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_islower.isLower(_r);
    /**
        * IsTitle reports whether the rune is a title case letter.
    **/
    static public inline function isTitle(_r:stdgo.GoInt32):Bool return stdgo._internal.unicode.Unicode_istitle.isTitle(_r);
    /**
        * To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
    **/
    static public inline function to(__case:stdgo.GoInt, _r:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.Unicode_to.to(__case, _r);
    /**
        * ToUpper maps the rune to upper case.
    **/
    static public inline function toUpper(_r:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.Unicode_toupper.toUpper(_r);
    /**
        * ToLower maps the rune to lower case.
    **/
    static public inline function toLower(_r:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.Unicode_tolower.toLower(_r);
    /**
        * ToTitle maps the rune to title case.
    **/
    static public inline function toTitle(_r:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.Unicode_totitle.toTitle(_r);
    /**
        * SimpleFold iterates over Unicode code points equivalent under
        * the Unicode-defined simple case folding. Among the code points
        * equivalent to rune (including rune itself), SimpleFold returns the
        * smallest rune > r if one exists, or else the smallest rune >= 0.
        * If r is not a valid Unicode code point, SimpleFold(r) returns r.
        * 
        * For example:
        * 
        * 	SimpleFold('A') = 'a'
        * 	SimpleFold('a') = 'A'
        * 
        * 	SimpleFold('K') = 'k'
        * 	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
        * 	SimpleFold('\u212A') = 'K'
        * 
        * 	SimpleFold('1') = '1'
        * 
        * 	SimpleFold(-2) = -2
    **/
    static public inline function simpleFold(_r:stdgo.GoInt32):stdgo.GoInt32 return stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r);
}
