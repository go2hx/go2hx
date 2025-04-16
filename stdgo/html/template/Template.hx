package stdgo.html.template;
var oK : ErrorCode = 0i32;
var errAmbigContext : ErrorCode = 1i32;
var errBadHTML : ErrorCode = 2i32;
var errBranchEnd : ErrorCode = 3i32;
var errEndContext : ErrorCode = 4i32;
var errNoSuchTemplate : ErrorCode = 5i32;
var errOutputContext : ErrorCode = 6i32;
var errPartialCharset : ErrorCode = 7i32;
var errPartialEscape : ErrorCode = 8i32;
var errRangeLoopReentry : ErrorCode = 9i32;
var errSlashAmbig : ErrorCode = 10i32;
var errPredefinedEscaper : ErrorCode = 11i32;
var errJSTemplate : ErrorCode = 12i32;
typedef Error = stdgo._internal.html.template.Template_error.Error;
typedef Template_ = stdgo._internal.html.template.Template_template.Template;
typedef CSS = stdgo._internal.html.template.Template_css.CSS;
typedef HTML = stdgo._internal.html.template.Template_html.HTML;
typedef HTMLAttr = stdgo._internal.html.template.Template_htmlattr.HTMLAttr;
typedef JS = stdgo._internal.html.template.Template_js.JS;
typedef JSStr = stdgo._internal.html.template.Template_jsstr.JSStr;
typedef URL = stdgo._internal.html.template.Template_url.URL;
typedef Srcset = stdgo._internal.html.template.Template_srcset.Srcset;
typedef ErrorCode = stdgo._internal.html.template.Template_errorcode.ErrorCode;
typedef FuncMap = stdgo._internal.html.template.Template_funcmap.FuncMap;
typedef ErrorPointer = stdgo._internal.html.template.Template_errorpointer.ErrorPointer;
typedef TemplatePointer = stdgo._internal.html.template.Template_templatepointer.TemplatePointer;
typedef CSSPointer = stdgo._internal.html.template.Template_csspointer.CSSPointer;
typedef HTMLPointer = stdgo._internal.html.template.Template_htmlpointer.HTMLPointer;
typedef HTMLAttrPointer = stdgo._internal.html.template.Template_htmlattrpointer.HTMLAttrPointer;
typedef JSPointer = stdgo._internal.html.template.Template_jspointer.JSPointer;
typedef JSStrPointer = stdgo._internal.html.template.Template_jsstrpointer.JSStrPointer;
typedef URLPointer = stdgo._internal.html.template.Template_urlpointer.URLPointer;
typedef SrcsetPointer = stdgo._internal.html.template.Template_srcsetpointer.SrcsetPointer;
typedef ErrorCodePointer = stdgo._internal.html.template.Template_errorcodepointer.ErrorCodePointer;
typedef FuncMapPointer = stdgo._internal.html.template.Template_funcmappointer.FuncMapPointer;
/**
    * 
    * Package template (html/template) implements data-driven templates for
    * generating HTML output safe against code injection. It provides the
    * same interface as [text/template] and should be used instead of
    * [text/template] whenever the output is HTML.
    * 
    * The documentation here focuses on the security features of the package.
    * For information about how to program the templates themselves, see the
    * documentation for [text/template].
    * 
    * # Introduction
    * 
    * This package wraps [text/template] so you can share its template API
    * to parse and execute HTML templates safely.
    * 
    * 	tmpl, err := template.New("name").Parse(...)
    * 	// Error checking elided
    * 	err = tmpl.Execute(out, data)
    * 
    * If successful, tmpl will now be injection-safe. Otherwise, err is an error
    * defined in the docs for ErrorCode.
    * 
    * HTML templates treat data values as plain text which should be encoded so they
    * can be safely embedded in an HTML document. The escaping is contextual, so
    * actions can appear within JavaScript, CSS, and URI contexts.
    * 
    * The security model used by this package assumes that template authors are
    * trusted, while Execute's data parameter is not. More details are
    * provided below.
    * 
    * Example
    * 
    * 	import "text/template"
    * 	...
    * 	t, err := template.New("foo").Parse(`{{define "T"}}Hello, {{.}}!{{end}}`)
    * 	err = t.ExecuteTemplate(out, "T", "<script>alert('you have been pwned')</script>")
    * 
    * produces
    * 
    * 	Hello, <script>alert('you have been pwned')</script>!
    * 
    * but the contextual autoescaping in html/template
    * 
    * 	import "html/template"
    * 	...
    * 	t, err := template.New("foo").Parse(`{{define "T"}}Hello, {{.}}!{{end}}`)
    * 	err = t.ExecuteTemplate(out, "T", "<script>alert('you have been pwned')</script>")
    * 
    * produces safe, escaped HTML output
    * 
    * 	Hello, &lt;script&gt;alert(&#39;you have been pwned&#39;)&lt;/script&gt;!
    * 
    * # Contexts
    * 
    * This package understands HTML, CSS, JavaScript, and URIs. It adds sanitizing
    * functions to each simple action pipeline, so given the excerpt
    * 
    * 	<a href="/search?q={{.}}">{{.}}</a>
    * 
    * At parse time each {{.}} is overwritten to add escaping functions as necessary.
    * In this case it becomes
    * 
    * 	<a href="/search?q={{. | urlescaper | attrescaper}}">{{. | htmlescaper}}</a>
    * 
    * where urlescaper, attrescaper, and htmlescaper are aliases for internal escaping
    * functions.
    * 
    * For these internal escaping functions, if an action pipeline evaluates to
    * a nil interface value, it is treated as though it were an empty string.
    * 
    * # Namespaced and data- attributes
    * 
    * Attributes with a namespace are treated as if they had no namespace.
    * Given the excerpt
    * 
    * 	<a my:href="{{.}}"></a>
    * 
    * At parse time the attribute will be treated as if it were just "href".
    * So at parse time the template becomes:
    * 
    * 	<a my:href="{{. | urlescaper | attrescaper}}"></a>
    * 
    * Similarly to attributes with namespaces, attributes with a "data-" prefix are
    * treated as if they had no "data-" prefix. So given
    * 
    * 	<a data-href="{{.}}"></a>
    * 
    * At parse time this becomes
    * 
    * 	<a data-href="{{. | urlescaper | attrescaper}}"></a>
    * 
    * If an attribute has both a namespace and a "data-" prefix, only the namespace
    * will be removed when determining the context. For example
    * 
    * 	<a my:data-href="{{.}}"></a>
    * 
    * This is handled as if "my:data-href" was just "data-href" and not "href" as
    * it would be if the "data-" prefix were to be ignored too. Thus at parse
    * time this becomes just
    * 
    * 	<a my:data-href="{{. | attrescaper}}"></a>
    * 
    * As a special case, attributes with the namespace "xmlns" are always treated
    * as containing URLs. Given the excerpts
    * 
    * 	<a xmlns:title="{{.}}"></a>
    * 	<a xmlns:href="{{.}}"></a>
    * 	<a xmlns:onclick="{{.}}"></a>
    * 
    * At parse time they become:
    * 
    * 	<a xmlns:title="{{. | urlescaper | attrescaper}}"></a>
    * 	<a xmlns:href="{{. | urlescaper | attrescaper}}"></a>
    * 	<a xmlns:onclick="{{. | urlescaper | attrescaper}}"></a>
    * 
    * # Errors
    * 
    * See the documentation of ErrorCode for details.
    * 
    * # A fuller picture
    * 
    * The rest of this package comment may be skipped on first reading; it includes
    * details necessary to understand escaping contexts and error messages. Most users
    * will not need to understand these details.
    * 
    * # Contexts
    * 
    * Assuming {{.}} is `O'Reilly: How are <i>you</i>?`, the table below shows
    * how {{.}} appears when used in the context to the left.
    * 
    * 	Context                          {{.}} After
    * 	{{.}}                            O'Reilly: How are &lt;i&gt;you&lt;/i&gt;?
    * 	<a title='{{.}}'>                O&#39;Reilly: How are you?
    * 	<a href="/{{.}}">                O&#39;Reilly: How are %3ci%3eyou%3c/i%3e?
    * 	<a href="?q={{.}}">              O&#39;Reilly%3a%20How%20are%3ci%3e...%3f
    * 	<a onx='f("{{.}}")'>             O\x27Reilly: How are \x3ci\x3eyou...?
    * 	<a onx='f({{.}})'>               "O\x27Reilly: How are \x3ci\x3eyou...?"
    * 	<a onx='pattern = /{{.}}/;'>     O\x27Reilly: How are \x3ci\x3eyou...\x3f
    * 
    * If used in an unsafe context, then the value might be filtered out:
    * 
    * 	Context                          {{.}} After
    * 	<a href="{{.}}">                 #ZgotmplZ
    * 
    * since "O'Reilly:" is not an allowed protocol like "http:".
    * 
    * If {{.}} is the innocuous word, `left`, then it can appear more widely,
    * 
    * 	Context                              {{.}} After
    * 	{{.}}                                left
    * 	<a title='{{.}}'>                    left
    * 	<a href='{{.}}'>                     left
    * 	<a href='/{{.}}'>                    left
    * 	<a href='?dir={{.}}'>                left
    * 	<a style="border-{{.}}: 4px">        left
    * 	<a style="align: {{.}}">             left
    * 	<a style="background: '{{.}}'>       left
    * 	<a style="background: url('{{.}}')>  left
    * 	<style>p.{{.}} {color:red}</style>   left
    * 
    * Non-string values can be used in JavaScript contexts.
    * If {{.}} is
    * 
    * 	struct{A,B string}{ "foo", "bar" }
    * 
    * in the escaped template
    * 
    * 	<script>var pair = {{.}};</script>
    * 
    * then the template output is
    * 
    * 	<script>var pair = {"A": "foo", "B": "bar"};</script>
    * 
    * See package json to understand how non-string content is marshaled for
    * embedding in JavaScript contexts.
    * 
    * # Typed Strings
    * 
    * By default, this package assumes that all pipelines produce a plain text string.
    * It adds escaping pipeline stages necessary to correctly and safely embed that
    * plain text string in the appropriate context.
    * 
    * When a data value is not plain text, you can make sure it is not over-escaped
    * by marking it with its type.
    * 
    * Types HTML, JS, URL, and others from content.go can carry safe content that is
    * exempted from escaping.
    * 
    * The template
    * 
    * 	Hello, {{.}}!
    * 
    * can be invoked with
    * 
    * 	tmpl.Execute(out, template.HTML(`<b>World</b>`))
    * 
    * to produce
    * 
    * 	Hello, <b>World</b>!
    * 
    * instead of the
    * 
    * 	Hello, &lt;b&gt;World&lt;b&gt;!
    * 
    * that would have been produced if {{.}} was a regular string.
    * 
    * # Security Model
    * 
    * https://rawgit.com/mikesamuel/sanitized-jquery-templates/trunk/safetemplate.html#problem_definition defines "safe" as used by this package.
    * 
    * This package assumes that template authors are trusted, that Execute's data
    * parameter is not, and seeks to preserve the properties below in the face
    * of untrusted data:
    * 
    * Structure Preservation Property:
    * "... when a template author writes an HTML tag in a safe templating language,
    * the browser will interpret the corresponding portion of the output as a tag
    * regardless of the values of untrusted data, and similarly for other structures
    * such as attribute boundaries and JS and CSS string boundaries."
    * 
    * Code Effect Property:
    * "... only code specified by the template author should run as a result of
    * injecting the template output into a page and all code specified by the
    * template author should run as a result of the same."
    * 
    * Least Surprise Property:
    * "A developer (or code reviewer) familiar with HTML, CSS, and JavaScript, who
    * knows that contextual autoescaping happens should be able to look at a {{.}}
    * and correctly infer what sanitization happens."
    * 
    * As a consequence of the Least Surprise Property, template actions within an
    * ECMAScript 6 template literal are disabled by default.
    * Handling string interpolation within these literals is rather complex resulting
    * in no clear safe way to support it.
    * To re-enable template actions within ECMAScript 6 template literals, use the
    * GODEBUG=jstmpllitinterp=1 environment variable.
    * 
**/
class Template {
    /**
        * HTMLEscape writes to w the escaped HTML equivalent of the plain text data b.
    **/
    static public inline function hTMLEscape(_w:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.html.template.Template_htmlescape.hTMLEscape(_w, _b);
    /**
        * HTMLEscapeString returns the escaped HTML equivalent of the plain text data s.
    **/
    static public inline function hTMLEscapeString(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.html.template.Template_htmlescapestring.hTMLEscapeString(_s);
    /**
        * HTMLEscaper returns the escaped HTML equivalent of the textual
        * representation of its arguments.
    **/
    static public inline function hTMLEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return stdgo._internal.html.template.Template_htmlescaper.hTMLEscaper(...[for (i in _args) i]);
    /**
        * JSEscape writes to w the escaped JavaScript equivalent of the plain text data b.
    **/
    static public inline function jSEscape(_w:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Slice<stdgo.GoUInt8>):Void stdgo._internal.html.template.Template_jsescape.jSEscape(_w, _b);
    /**
        * JSEscapeString returns the escaped JavaScript equivalent of the plain text data s.
    **/
    static public inline function jSEscapeString(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.html.template.Template_jsescapestring.jSEscapeString(_s);
    /**
        * JSEscaper returns the escaped JavaScript equivalent of the textual
        * representation of its arguments.
    **/
    static public inline function jSEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return stdgo._internal.html.template.Template_jsescaper.jSEscaper(...[for (i in _args) i]);
    /**
        * URLQueryEscaper returns the escaped value of the textual representation of
        * its arguments in a form suitable for embedding in a URL query.
    **/
    static public inline function uRLQueryEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return stdgo._internal.html.template.Template_urlqueryescaper.uRLQueryEscaper(...[for (i in _args) i]);
    /**
        * New allocates a new HTML template with the given name.
    **/
    static public inline function new_(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return stdgo._internal.html.template.Template_new_.new_(_name);
    /**
        * Must is a helper that wraps a call to a function returning (*Template, error)
        * and panics if the error is non-nil. It is intended for use in variable initializations
        * such as
        * 
        * 	var t = template.Must(template.New("name").Parse("html"))
    **/
    static public inline function must(_t:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _err:stdgo.Error):stdgo.Ref<stdgo._internal.html.template.Template_template.Template> return stdgo._internal.html.template.Template_must.must(_t, _err);
    /**
        * ParseFiles creates a new Template and parses the template definitions from
        * the named files. The returned template's name will have the (base) name and
        * (parsed) contents of the first file. There must be at least one file.
        * If an error occurs, parsing stops and the returned *Template is nil.
        * 
        * When parsing multiple files with the same name in different directories,
        * the last one mentioned will be the one that results.
        * For instance, ParseFiles("a/foo", "b/foo") stores "b/foo" as the template
        * named "foo", while "a/foo" is unavailable.
    **/
    static public inline function parseFiles(_filenames:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return stdgo._internal.html.template.Template_parsefiles.parseFiles(...[for (i in _filenames) i]);
    /**
        * ParseGlob creates a new Template and parses the template definitions from
        * the files identified by the pattern. The files are matched according to the
        * semantics of filepath.Match, and the pattern must match at least one file.
        * The returned template will have the (base) name and (parsed) contents of the
        * first file matched by the pattern. ParseGlob is equivalent to calling
        * ParseFiles with the list of files matched by the pattern.
        * 
        * When parsing multiple files with the same name in different directories,
        * the last one mentioned will be the one that results.
    **/
    static public inline function parseGlob(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return stdgo._internal.html.template.Template_parseglob.parseGlob(_pattern);
    /**
        * IsTrue reports whether the value is 'true', in the sense of not the zero of its type,
        * and whether the value has a meaningful truth value. This is the definition of
        * truth used by if and other such actions.
    **/
    static public inline function isTrue(_val:stdgo.AnyInterface):{ var _0 : Bool; var _1 : Bool; } return stdgo._internal.html.template.Template_istrue.isTrue(_val);
    /**
        * ParseFS is like ParseFiles or ParseGlob but reads from the file system fs
        * instead of the host operating system's file system.
        * It accepts a list of glob patterns.
        * (Note that most file names serve as glob patterns matching only themselves.)
    **/
    static public inline function parseFS(_fs:stdgo._internal.io.fs.Fs_fs.FS, _patterns:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>; var _1 : stdgo.Error; } return stdgo._internal.html.template.Template_parsefs.parseFS(_fs, ...[for (i in _patterns) i]);
}
