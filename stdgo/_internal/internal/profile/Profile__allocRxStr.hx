package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
var _allocRxStr : stdgo.GoString = stdgo._internal.strings.Strings_join.join((new stdgo.Slice<stdgo.GoString>(49, 49, ...[
("calloc" : stdgo.GoString),
("cfree" : stdgo.GoString),
("malloc" : stdgo.GoString),
("free" : stdgo.GoString),
("memalign" : stdgo.GoString),
("do_memalign" : stdgo.GoString),
("(__)?posix_memalign" : stdgo.GoString),
("pvalloc" : stdgo.GoString),
("valloc" : stdgo.GoString),
("realloc" : stdgo.GoString),
("tcmalloc::.*" : stdgo.GoString),
("tc_calloc" : stdgo.GoString),
("tc_cfree" : stdgo.GoString),
("tc_malloc" : stdgo.GoString),
("tc_free" : stdgo.GoString),
("tc_memalign" : stdgo.GoString),
("tc_posix_memalign" : stdgo.GoString),
("tc_pvalloc" : stdgo.GoString),
("tc_valloc" : stdgo.GoString),
("tc_realloc" : stdgo.GoString),
("tc_new" : stdgo.GoString),
("tc_delete" : stdgo.GoString),
("tc_newarray" : stdgo.GoString),
("tc_deletearray" : stdgo.GoString),
("tc_new_nothrow" : stdgo.GoString),
("tc_newarray_nothrow" : stdgo.GoString),
("malloc_zone_malloc" : stdgo.GoString),
("malloc_zone_calloc" : stdgo.GoString),
("malloc_zone_valloc" : stdgo.GoString),
("malloc_zone_realloc" : stdgo.GoString),
("malloc_zone_memalign" : stdgo.GoString),
("malloc_zone_free" : stdgo.GoString),
("runtime\\..*" : stdgo.GoString),
("BaseArena::.*" : stdgo.GoString),
("(::)?do_malloc_no_errno" : stdgo.GoString),
("(::)?do_malloc_pages" : stdgo.GoString),
("(::)?do_malloc" : stdgo.GoString),
("DoSampledAllocation" : stdgo.GoString),
("MallocedMemBlock::MallocedMemBlock" : stdgo.GoString),
("_M_allocate" : stdgo.GoString),
("__builtin_(vec_)?delete" : stdgo.GoString),
("__builtin_(vec_)?new" : stdgo.GoString),
("__gnu_cxx::new_allocator::allocate" : stdgo.GoString),
("__libc_malloc" : stdgo.GoString),
("__malloc_alloc_template::allocate" : stdgo.GoString),
("allocate" : stdgo.GoString),
("cpp_alloc" : stdgo.GoString),
("operator new(\\[\\])?" : stdgo.GoString),
("simple_alloc::allocate" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("|" : stdgo.GoString));
