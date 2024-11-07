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
    		gotoNext = 3652049
    		_ = gotoNext == 3652049
    		return nil, errInvalidDelim
    		gotoNext = 3652160
    	} else {
    		gotoNext = 3652160
}
    	_ = gotoNext == 3652160
    	_ = 0
    	gotoNext = 3652196
    	_ = gotoNext == 3652196
    	if errRead_3652181 == nil {
    		gotoNext = 3652215
    		_ = gotoNext == 3652215
    		line_3652164, errRead_3652181 = r.readLine()
    		if r.Comment != 0 && nextRune(line_3652164) == r.Comment {
    			gotoNext = 3652299
    			_ = gotoNext == 3652299
    			line_3652164 = nil
    			_ = 0
    			gotoNext = 3652196
    			gotoNext = 3652355
    		} else {
    			gotoNext = 3652355
}
    		_ = gotoNext == 3652355
    		if errRead_3652181 == nil && len(line_3652164) == lengthNL(line_3652164) {
    			gotoNext = 3652404
    			_ = gotoNext == 3652404
    			line_3652164 = nil
    			_ = 0
    			gotoNext = 3652196
    			gotoNext = 3652458
    		} else {
    			gotoNext = 3652458
}
    		_ = gotoNext == 3652458
    		gotoNext = 3652468
    		gotoNext = 3652196
    	} else {
    		gotoNext = 3652468
}
    	_ = gotoNext == 3652468
    	if errRead_3652181 == io.EOF {
    		gotoNext = 3652489
    		_ = gotoNext == 3652489
    		return nil, errRead_3652181
    		gotoNext = 3652554
    	} else {
    		gotoNext = 3652554
}
    	_ = gotoNext == 3652554
    	quoteLen_3652575 = len("\"")
    	commaLen_3652596 = utf8.RuneLen(r.Comma)
    	recLine_3652631 = r.numLine
    	r.recordBuffer = r.recordBuffer[:0]
    	r.fieldIndexes = r.fieldIndexes[:0]
    	r.fieldPositions = r.fieldPositions[:0]
    	pos_3652796 = position{line_3652164: r.numLine, col: 1}
    	gotoNext = 3652837
    	_ = gotoNext == 3652837
    	_ = 0
    	parseFieldBreak = false
    	gotoNext = 3652850
    	_ = gotoNext == 3652850
    	if !parseFieldBreak {
    		gotoNext = 3652854
    		_ = gotoNext == 3652854
    		if r.TrimLeadingSpace {
    			gotoNext = 3652880
    			_ = gotoNext == 3652880
    			i_3652885 = bytes.IndexFunc(line_3652164, func(r rune) bool {
    				return !unicode.IsSpace(r)
    			})
    			if i_3652885 < 0 {
    				gotoNext = 3652981
    				_ = gotoNext == 3652981
    				i_3652885 = len(line_3652164)
    				pos_3652796.col -= lengthNL(line_3652164)
    				gotoNext = 3653039
    			} else {
    				gotoNext = 3653039
}
    			_ = gotoNext == 3653039
    			line_3652164 = line_3652164[i_3652885:]
    			pos_3652796.col += i_3652885
    			gotoNext = 3653077
    		} else {
    			gotoNext = 3653077
}
    		_ = gotoNext == 3653077
    		if len(line_3652164) == 0 || line_3652164[0] != 34 {
    			gotoNext = 3653113
    			_ = gotoNext == 3653113
    			i_3653148 = bytes.IndexRune(line_3652164, r.Comma)
    			field_3653187 = line_3652164
    			if i_3653148 >= 0 {
    				gotoNext = 3653214
    				_ = gotoNext == 3653214
    				field_3653187 = field_3653187[:i_3653148]
    				gotoNext = 3653364
    			} else {
    				gotoNext = 3653248
    				_ = gotoNext == 3653248
    				field_3653187 = field_3653187[:len(field_3653187)-lengthNL(field_3653187)]
    				gotoNext = 3653364
}
    			_ = gotoNext == 3653364
    			if !r.LazyQuotes {
    				gotoNext = 3653381
    				_ = gotoNext == 3653381
    				if j_3653390 = bytes.IndexByte(field_3653187, 34); j_3653390 >= 0 {
    					gotoNext = 3653431
    					_ = gotoNext == 3653431
    					col_3653438 = pos_3652796.col + j_3653390
    					err_3652558 = &ParseError{StartLine: recLine_3652631, Line: r.numLine, Column: col_3653438, Err: ErrBareQuote}
    					parseFieldBreak = true
    					gotoNext = 3652850
    					gotoNext = 3653585
    				} else {
    					gotoNext = 3653585
}
    				gotoNext = 3653585
    			} else {
    				gotoNext = 3653585
}
    			_ = gotoNext == 3653585
    			r.recordBuffer = append(r.recordBuffer, field_3653187...)
    			r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    			r.fieldPositions = append(r.fieldPositions, pos_3652796)
    			if i_3653148 >= 0 {
    				gotoNext = 3653764
    				_ = gotoNext == 3653764
    				line_3652164 = line_3652164[i_3653148+commaLen_3652596:]
    				pos_3652796.col += i_3653148 + commaLen_3652596
    				gotoNext = 3652850
    				gotoNext = 3653855
    			} else {
    				gotoNext = 3653855
}
    			_ = gotoNext == 3653855
    			parseFieldBreak = true
    			gotoNext = 3652850
    			gotoNext = 3655946
    		} else {
    			gotoNext = 3653881
    			_ = gotoNext == 3653881
    			fieldPos_3653912 = pos_3652796
    			line_3652164 = line_3652164[1:]
    			pos_3652796.col += 1
    			_ = 0
    			gotoNext = 3653980
    			_ = gotoNext == 3653980
    			if true {
    				gotoNext = 3653984
    				_ = gotoNext == 3653984
    				i_3653990 = bytes.IndexByte(line_3652164, 34)
    				if i_3653990 >= 0 {
    					gotoNext = 3654036
    					_ = gotoNext == 3654036
    					r.recordBuffer = append(r.recordBuffer, line_3652164[:i_3653990]...)
    					line_3652164 = line_3652164[i_3653990+1:]
    					pos_3652796.col += i_3653990 + 1
    					rn_3654191 = nextRune(line_3652164)
    					gotoNext = 3654184
    					_ = gotoNext == 3654184
    					switch rn_3654191 = nextRune(line_3652164); {
    					case rn_3654191 == 34:
    						gotoNext = 3654220
    						_ = gotoNext == 3654220
    						r.recordBuffer = append(r.recordBuffer, 34)
    						line_3652164 = line_3652164[1:]
    						pos_3652796.col += 1
    						gotoNext = 3655946
    					case rn_3654191 == r.Comma:
    						gotoNext = 3654386
    						_ = gotoNext == 3654386
    						line_3652164 = line_3652164[commaLen_3652596:]
    						pos_3652796.col += commaLen_3652596
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    						gotoNext = 3652850
    						gotoNext = 3655946
    					case lengthNL(line_3652164) == len(line_3652164):
    						gotoNext = 3654658
    						_ = gotoNext == 3654658
    						r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    						r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655946
    					case r.LazyQuotes:
    						gotoNext = 3654886
    						_ = gotoNext == 3654886
    						r.recordBuffer = append(r.recordBuffer, 34)
    						gotoNext = 3655946
    					default:
    						gotoNext = 3654997
    						_ = gotoNext == 3654997
    						err_3652558 = &ParseError{StartLine: recLine_3652631, Line: r.numLine, Column: pos_3652796.col - 1, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655946
}
    					gotoNext = 3655946
    				} else if len(line_3652164) > 0 {
    					gotoNext = 3655220
    					_ = gotoNext == 3655220
    					r.recordBuffer = append(r.recordBuffer, line_3652164...)
    					if errRead_3652181 != nil {
    						gotoNext = 3655347
    						_ = gotoNext == 3655347
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655384
    					} else {
    						gotoNext = 3655384
}
    					_ = gotoNext == 3655384
    					pos_3652796.col += len(line_3652164)
    					line_3652164, errRead_3652181 = r.readLine()
    					if len(line_3652164) > 0 {
    						gotoNext = 3655461
    						_ = gotoNext == 3655461
    						pos_3652796.line++
    						pos_3652796.col = 1
    						gotoNext = 3655510
    					} else {
    						gotoNext = 3655510
}
    					_ = gotoNext == 3655510
    					if errRead_3652181 == io.EOF {
    						gotoNext = 3655531
    						_ = gotoNext == 3655531
    						errRead_3652181 = nil
    						gotoNext = 3655946
    					} else {
    						gotoNext = 3655946
}
    					gotoNext = 3655946
    				} else {
    					gotoNext = 3655571
    					_ = gotoNext == 3655571
    					if !r.LazyQuotes && errRead_3652181 == nil {
    						gotoNext = 3655656
    						_ = gotoNext == 3655656
    						err_3652558 = &ParseError{StartLine: recLine_3652631, Line: pos_3652796.line, Column: pos_3652796.col, Err: ErrQuote}
    						parseFieldBreak = true
    						gotoNext = 3652850
    						gotoNext = 3655785
    					} else {
    						gotoNext = 3655785
}
    					_ = gotoNext == 3655785
    					r.fieldIndexes = append(r.fieldIndexes, len(r.recordBuffer))
    					r.fieldPositions = append(r.fieldPositions, fieldPos_3653912)
    					parseFieldBreak = true
    					gotoNext = 3652850
    					gotoNext = 3655946
}
    				gotoNext = 3653980
    			} else {
    				gotoNext = 3655946
}
    			gotoNext = 3655946
}
    		gotoNext = 3652850
    	} else {
    		gotoNext = 3655946
}
    	_ = gotoNext == 3655946
    	if err_3652558 == nil {
    		gotoNext = 3655960
    		_ = gotoNext == 3655960
    		err_3652558 = errRead_3652181
    		gotoNext = 3656108
    	} else {
    		gotoNext = 3656108
}
    	_ = gotoNext == 3656108
    	str_3656108 = string(r.recordBuffer)
    	dst = dst[:0]
    	if cap(dst) < len(r.fieldIndexes) {
    		gotoNext = 3656235
    		_ = gotoNext == 3656235
    		dst = make([]string, len(r.fieldIndexes))
    		gotoNext = 3656285
    	} else {
    		gotoNext = 3656285
}
    	_ = gotoNext == 3656285
    	dst = dst[:len(r.fieldIndexes)]
    	if 0 < len(r.fieldIndexes) {
    		gotoNext = 3656413
    		_ = gotoNext == 3656413
    		i_3656338, idx_3656341 = 0, r.fieldIndexes[0]
    		gotoNext = 3656414
    		_ = gotoNext == 3656414
    		if i_3656338 < len(r.fieldIndexes) {
    			gotoNext = 3656369
    			_ = gotoNext == 3656369
    			idx_3656341 = r.fieldIndexes[i_3656338]
    			dst[i_3656338] = str_3656108[preIdx_3656322:idx_3656341]
    			preIdx_3656322 = idx_3656341
    			i_3656338++
    			gotoNext = 3656414
    		} else {
    			gotoNext = 3656470
}
    		gotoNext = 3656470
    	} else {
    		gotoNext = 3656470
}
    	_ = gotoNext == 3656470
    	if r.FieldsPerRecord > 0 {
    		gotoNext = 3656495
    		_ = gotoNext == 3656495
    		if len(dst) != r.FieldsPerRecord && err_3652558 == nil {
    			gotoNext = 3656546
    			_ = gotoNext == 3656546
    			err_3652558 = &ParseError{StartLine: recLine_3652631, Line: recLine_3652631, Column: 1, Err: ErrFieldCount}
    			gotoNext = 3656746
    		} else {
    			gotoNext = 3656746
}
    		gotoNext = 3656746
    	} else if r.FieldsPerRecord == 0 {
    		gotoNext = 3656709
    		_ = gotoNext == 3656709
    		r.FieldsPerRecord = len(dst)
    		gotoNext = 3656746
    	} else {
    		gotoNext = 3656746
}
    	_ = gotoNext == 3656746
    	return dst, err_3652558
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


