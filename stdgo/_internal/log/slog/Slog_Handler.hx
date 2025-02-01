package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
@:interface typedef Handler = stdgo.StructType & {
    /**
        Enabled reports whether the handler handles records at the given level.
        The handler ignores records whose level is lower.
        It is called early, before any arguments are processed,
        to save effort if the log event should be discarded.
        If called from a Logger method, the first argument is the context
        passed to that method, or context.Background() if nil was passed
        or the method does not take a context.
        The context is passed so Enabled can use its values
        to make a decision.
        
        
    **/
    @:interfacetypeffun
    public dynamic function enabled(_0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool;
    /**
        Handle handles the Record.
        It will only be called when Enabled returns true.
        The Context argument is as for Enabled.
        It is present solely to provide Handlers access to the context's values.
        Canceling the context should not affect record processing.
        (Among other things, log messages may be necessary to debug a
        cancellation-related problem.)
        
        Handle methods that produce output should observe the following rules:
          - If r.Time is the zero time, ignore the time.
          - If r.PC is zero, ignore it.
          - Attr's values should be resolved.
          - If an Attr's key and value are both the zero value, ignore the Attr.
            This can be tested with attr.Equal(Attr{}).
          - If a group's key is empty, inline the group's Attrs.
          - If a group has no Attrs (even if it has a non-empty key),
            ignore it.
        
        
    **/
    @:interfacetypeffun
    public dynamic function handle(_0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error;
    /**
        WithAttrs returns a new Handler whose attributes consist of
        both the receiver's attributes and the arguments.
        The Handler owns the slice: it may retain, modify or discard it.
        
        
    **/
    @:interfacetypeffun
    public dynamic function withAttrs(_attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler;
    /**
        WithGroup returns a new Handler with the given group appended to
        the receiver's existing groups.
        The keys of all subsequent attributes, whether added by With or in a
        Record, should be qualified by the sequence of group names.
        
        How this qualification happens is up to the Handler, so long as
        this Handler's attribute keys differ from those of another Handler
        with a different sequence of group names.
        
        A Handler should treat WithGroup as starting a Group of Attrs that ends
        at the end of the log event. That is,
        
            logger.WithGroup("s").LogAttrs(level, msg, slog.Int("a", 1), slog.Int("b", 2))
        
        should behave like
        
            logger.LogAttrs(level, msg, slog.Group("s", slog.Int("a", 1), slog.Int("b", 2)))
        
        If the name is empty, WithGroup returns the receiver.
        
        
    **/
    @:interfacetypeffun
    public dynamic function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler;
};
