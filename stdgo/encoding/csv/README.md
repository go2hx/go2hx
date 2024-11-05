# Module: `stdgo.encoding.csv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Csv](<#class-csv>)

  - [`function newReader(_r:stdgo._internal.io.Reader):stdgo.encoding.csv.Reader`](<#csv-function-newreader>)

  - [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.encoding.csv.Writer`](<#csv-function-newwriter>)

- [abstract ParseError](<#abstract-parseerror>)

- [abstract Reader](<#abstract-reader>)

- [abstract T\_position](<#abstract-t_position>)

- [abstract Writer](<#abstract-writer>)

# Variables


```haxe
import stdgo.encoding.csv.Csv
```


```haxe
var errBareQuote:stdgo.Error
```


```haxe
var errFieldCount:stdgo.Error
```


```haxe
var errQuote:stdgo.Error
```


```haxe
var errTrailingComma:stdgo.Error
```


# Classes


```haxe
import stdgo.encoding.csv.*
```


## class Csv


```
{
    	if r.Comma == r.Comment || !validDelim(r.Comma) || (r.Comment != 0 && !validDelim(r.Comment)) {
    		gotoNext = 3656891
    		_ = gotoNext == 3656891
    		return nil, errInvalidDelim
    		gotoNext = 3657002
    	} else {
    		gotoNext = 3657002
}
    	_ = gotoNext == 3657002
    	_ = 0
    	gotoNext = 3657038
    	_ = gotoNext == 3657038
    	if errRead_3657023 == nil {
    		gotoNext = 3657057
    		_ = gotoNext == 3657057
    		line_3657006, errRead_3657023 = r.readLine()
    		if r.Comment != 0 && nextRune(line_3657006) == r.Comment {
    			gotoNext = 3657141
    			_ = gotoNext == 3657141
    			line_3657006 = nil
    			_ = 0
    			gotoNext = 3657038
    			gotoNext = 3657197
    		} else {
    			gotoNext = 3657197
}
    		_ = gotoNext == 3657197
    		if errRead_3657023 == nil && len(line_3657006) == lengthNL(line_3657006) {
    			gotoNext = 3657246
    			_ = gotoNext == 3657246
    			line_3657006 = nil
    			_ = 0
    			gotoNext = 3657038
    			gotoNext = 3657300
    		} else {
    			gotoNext = 3657300
}
    		_ = gotoNext == 3657300
    		gotoNext = 3657310
    		gotoNext = 3657038
    	} else {
    		gotoNext = 3657310
}
    	_ = gotoNext == 3657310
    	if errRead_3657023 == io.EOF {
    		gotoNext = 3657331
    		_ = gotoNext == 3657331
    		return nil, errRead_3657023
    		gotoNext = 3657396
    	} else {
    		gotoNext = 3657396
}
    	_ = gotoNext == 3657396
    	quoteLen_3657417 = len("\"")
    	commaLen_3657438 = utf8.RuneLen(r.Comma)
    	recLine_3657473 = r.numLine
    	r.recordBuffer = r.recordBuffer[:0]
    	r.fieldIndexes = r.fieldIndexes[:0]
    	r.fieldPositions = r.fieldPositions[:0]
    	pos_3657638 = position{line_3657006: r.numLine, col: 1}
    	gotoNext = 3657679
    	_ = gotoNext == 3657679
    	_ = 0
    	parseFieldBreak = false
    	gotoNext = 3657692
    	_ = gotoNext == 3657692
    	if !parseFieldBreak {
    		gotoNext = 3657696
    		_ = gotoNext == 3657696
    		if r.TrimLeadingSpace {
    			gotoNext = 3657722
    			_ = gotoNext == 3657722
    			i_3657727 = bytes.IndexFunc(line_3657006, func(r rune) bool {
    				return !unicode.IsSpace(r)
    			})
    			if i_3657727 < 0 {
    				gotoNext = 3657823
    				_ = gotoNext == 3657823
    				i_3657727 = len(line_3657006)
    				pos_3657638.col -= lengthNL(line_3657006)
    				gotoNext = 3657881
    			} else {
    				gotoNext = 3657881
}
    			_ = gotoNext == 3657881
    			line_3657006 = line_3657006[i_3657727:]
    			pos_3657638.col += i_3657727
    			gotoNext = 3657919
    		} else {
    			gotoNext = 3657919
}
    		_ = gotoNext == 3657919
    		if len(line_3657006) == 0 || line_3657006[0] != 34 {
    			gotoNext = 3657955
    			_ = gotoNext == 3657955
    			i_3657990 = bytes.IndexRune(line_3657006, r.Comma)
    			field_3658029 = line_3657006
    			if i_3657990 >= 0 {
    				gotoNext = 3658056
    				_ = gotoNext == 3658056
    				field_3658029 = field_3658029[:i_3657990]
    				gotoNext = 3658206
    			} else {
    				gotoNext = 3658090
    				_ = gotoNext == 3658090
    				field_3658029 = field_3658029[:len(field_3658029)-lengthNL(field_3658029)]
    				gotoNext = 3658206
}
    			_ = gotoNext == 3658206
    			if !r.LazyQuotes {
    				gotoNext = 3658223
    				_ = gotoNext == 3658223
    				if j_3658232 = bytes.IndexByte(field_3658029, 34); j_3658232 >= 0 {
    					gotoNext = 3658273
    					_ = gotoNext == 3658273
    					col_3658280 = pos_3657638.col + j_3658232
    					err_3657400 = &ParseError{StartLine: recLine_3657473, Line: r.numLine, Column: col_3658280, Err: ErrBareQuote}
    					parseFieldBreak = true
    					gotoNext = 3657692
    					gotoNext = 3658427
    				} else {
    					gotoNext = 3658427
}
    				gotoNext = 3658427
    			} else {
    				gotoNext = 3658427
}
    			_ = gotoNext == 3658427
    			r.recordBuffer = append(r.recordBuffer, field_3658029...)
    			r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    			r.fieldPositions = append(r.fieldPositions, pos_3657638)
    			if i_3657990 >= 0 {
    				gotoNext = 3658606
    				_ = gotoNext == 3658606
    				line_3657006 = line_3657006[i_3657990+commaLen_3657438:]
    				pos_3657638.col += i_3657990 + commaLen_3657438
    				gotoNext = 3657692
    				gotoNext = 3658697
    			} else {
    				gotoNext = 3658697
}
    			_ = gotoNext == 3658697
    			parseFieldBreak = true
    			gotoNext = 3657692
    			gotoNext = 3660788
    		} else {
    			gotoNext = 3658723
    			_ = gotoNext == 3658723
    			fieldPos_3658754 = pos_3657638
    			line_3657006 = line_3657006[1:]
    			pos_3657638.col += 1
    			_ = 0
    			gotoNext = 3658822
    			_ = gotoNext == 3658822
    			if true {
    				gotoNext = 3658826
    				_ = gotoNext == 3658826
    				i_3658832 = bytes.IndexByte(line_3657006, 34)
    				if i_3658832 >= 0 {
    					gotoNext = 3658878
    					_ = gotoNext == 3658878
    					r.recordBuffer = append(r.recordBuffer, line_3657006[:i_3658832]...)
    					line_3657006 = line_3657006[i_3658832+1:]
    					pos_3657638.col += i_3658832 + 1
    					rn_3659033 = nextRune(line_3657006)
    					gotoNext = 3659026
    					_ = gotoNext == 3659026
    					switch rn_3659033 = nextRune(line_3657006); {
    					case rn_3659033 == 34:
    						gotoNext = 3659062
    						_ = gotoNext == 3659062
    						r.recordBuffer = append(r.recordBuffer, 34)
    						line_3657006 = line_3657006[1:]
    						pos_3657638.col += 1
    						gotoNext = 3660788
    					case rn_3659033 == r.Comma:
    						gotoNext = 3659228
    						_ = gotoNext == 3659228
    						line_3657006 = line_3657006[commaLen_3657438:]
    						pos_3657638.col += commaLen_3657438
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    						gotoNext = 3657692
    						gotoNext = 3660788
    					case lengthNL(line_3657006) == len(line_3657006):
    						gotoNext = 3659500
    						_ = gotoNext == 3659500
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660788
    					case r.LazyQuotes:
    						gotoNext = 3659728
    						_ = gotoNext == 3659728
    						r.recordBuffer = append(r.recordBuffer, 34)
    						gotoNext = 3660788
    					default:
    						gotoNext = 3659839
    						_ = gotoNext == 3659839
    						err_3657400 = &ParseError{StartLine: recLine_3657473, Line: r.numLine, Column: pos_3657638.col - 1, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660788
}
    					gotoNext = 3660788
    				} else if len(line_3657006) > 0 {
    					gotoNext = 3660062
    					_ = gotoNext == 3660062
    					r.recordBuffer = append(r.recordBuffer, line_3657006...)
    					if errRead_3657023 != nil {
    						gotoNext = 3660189
    						_ = gotoNext == 3660189
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660226
    					} else {
    						gotoNext = 3660226
}
    					_ = gotoNext == 3660226
    					pos_3657638.col += len(line_3657006)
    					line_3657006, errRead_3657023 = r.readLine()
    					if len(line_3657006) > 0 {
    						gotoNext = 3660303
    						_ = gotoNext == 3660303
    						pos_3657638.line++
    						pos_3657638.col = 1
    						gotoNext = 3660352
    					} else {
    						gotoNext = 3660352
}
    					_ = gotoNext == 3660352
    					if errRead_3657023 == io.EOF {
    						gotoNext = 3660373
    						_ = gotoNext == 3660373
    						errRead_3657023 = nil
    						gotoNext = 3660788
    					} else {
    						gotoNext = 3660788
}
    					gotoNext = 3660788
    				} else {
    					gotoNext = 3660413
    					_ = gotoNext == 3660413
    					if !r.LazyQuotes && errRead_3657023 == nil {
    						gotoNext = 3660498
    						_ = gotoNext == 3660498
    						err_3657400 = &ParseError{StartLine: recLine_3657473, Line: pos_3657638.line, Column: pos_3657638.col, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3657692
    						gotoNext = 3660627
    					} else {
    						gotoNext = 3660627
}
    					_ = gotoNext == 3660627
    					r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    					r.fieldPositions = append(r.fieldPositions, fieldPos_3658754)
    					parseFieldBreak = true
    					gotoNext = 3657692
    					gotoNext = 3660788
}
    				gotoNext = 3658822
    			} else {
    				gotoNext = 3660788
}
    			gotoNext = 3660788
}
    		gotoNext = 3657692
    	} else {
    		gotoNext = 3660788
}
    	_ = gotoNext == 3660788
    	if err_3657400 == nil {
    		gotoNext = 3660802
    		_ = gotoNext == 3660802
    		err_3657400 = errRead_3657023
    		gotoNext = 3660950
    	} else {
    		gotoNext = 3660950
}
    	_ = gotoNext == 3660950
    	str_3660950 = string(r.recordBuffer)
    	dst = dst[:0]
    	if cap(dst) < len(r.fieldIndexes) {
    		gotoNext = 3661077
    		_ = gotoNext == 3661077
    		dst = make([]string, len(r.fieldIndexes))
    		gotoNext = 3661127
    	} else {
    		gotoNext = 3661127
}
    	_ = gotoNext == 3661127
    	dst = dst[:len(r.fieldIndexes)]
    	if 0 < len(r.fieldIndexes) {
    		gotoNext = 3661255
    		_ = gotoNext == 3661255
    		i_3661180, idx_3661183 = 0, r.fieldIndexes[0]
    		gotoNext = 3661256
    		_ = gotoNext == 3661256
    		if i_3661180 < len(r.fieldIndexes) {
    			gotoNext = 3661211
    			_ = gotoNext == 3661211
    			idx_3661183 = r.fieldIndexes[i_3661180]
    			dst[i_3661180] = str_3660950[preIdx_3661164:idx_3661183]
    			preIdx_3661164 = idx_3661183
    			i_3661180++
    			gotoNext = 3661256
    		} else {
    			gotoNext = 3661312
}
    		gotoNext = 3661312
    	} else {
    		gotoNext = 3661312
}
    	_ = gotoNext == 3661312
    	if r.FieldsPerRecord > 0 {
    		gotoNext = 3661337
    		_ = gotoNext == 3661337
    		if len(dst) != r.FieldsPerRecord && err_3657400 == nil {
    			gotoNext = 3661388
    			_ = gotoNext == 3661388
    			err_3657400 = &ParseError{StartLine: recLine_3657473, Line: recLine_3657473, Column: 1, Err: ErrFieldCount}
    			gotoNext = 3661588
    		} else {
    			gotoNext = 3661588
}
    		gotoNext = 3661588
    	} else if r.FieldsPerRecord == 0 {
    		gotoNext = 3661551
    		_ = gotoNext == 3661551
    		r.FieldsPerRecord = len(dst)
    		gotoNext = 3661588
    	} else {
    		gotoNext = 3661588
}
    	_ = gotoNext == 3661588
    	return dst, err_3657400
    	gotoNext = -1
    }
```
### Csv function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.encoding.csv.Reader
```



NewReader returns a new Reader that reads from r.  

[\(view code\)](<./Csv.hx#L614>)


### Csv function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.encoding.csv.Writer
```



NewWriter returns a new Writer that writes to w.  

[\(view code\)](<./Csv.hx#L620>)


# Abstracts


## abstract ParseError


[\(view file containing code\)](<./Csv.hx>)


## abstract Reader


[\(view file containing code\)](<./Csv.hx>)


## abstract T\_position


[\(view file containing code\)](<./Csv.hx>)


## abstract Writer


[\(view file containing code\)](<./Csv.hx>)


