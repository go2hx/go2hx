package main

import (
	"bytes"
	"fmt"
)

const N = 10000       // make this bigger for a larger (and slower) test
var testString string // test data for write tests
var testBytes []byte  // test data; same as testString but as a slice.

func init() {
	testBytes = make([]byte, N)
	for i := 0; i < N; i++ {
		testBytes[i] = 'a' + byte(i%26)
	}
	testString = string(testBytes)
}

func main() {
	var buf bytes.Buffer
	limit := 30
	//if testing.Short() {
	limit = 9
	//}
	for i := 3; i < limit; i += 3 {
		s := fillString("TestLargeWrites (1)", &buf, "", 5, testString)
		empty("TestLargeStringWrites (2)", &buf, s, make([]byte, len(testString)/i))
	}
	check("TestLargeStringWrites (3)", &buf, "")
}

func fillString(testname string, buf *bytes.Buffer, s string, n int, fus string) string {
	check(testname+" (fill 1)", buf, s)
	for ; n > 0; n-- {
		m, err := buf.WriteString(fus)
		if m != len(fus) {
			fmt.Printf(testname+" (fill 2): m == %d, expected %d", m, len(fus))
		}
		if err != nil {
			fmt.Printf(testname+" (fill 3): err should always be nil, found err == %s", err)
		}
		s += fus
		check(testname+" (fill 4)", buf, s)
	}
	return s
}

func empty(testname string, buf *bytes.Buffer, s string, fub []byte) {
	check(testname+" (empty 1)", buf, s)

	for {
		n, err := buf.Read(fub)
		if n == 0 {
			break
		}
		if err != nil {
			fmt.Printf(testname+" (empty 2): err should always be nil, found err == %s\n", err)
			panic("issue")
		}
		s = s[n:]
		check(testname+" (empty 3)", buf, s)
	}

	check(testname+" (empty 4)", buf, "")
}

// Verify that contents of buf match the string s.
func check(testname string, buf *bytes.Buffer, s string) {
	bytes := buf.Bytes()
	str := buf.String()
	if buf.Len() != len(bytes) {
		fmt.Printf("%s: buf.Len() == %d, len(buf.Bytes()) == %d\n", testname, buf.Len(), len(bytes))
		panic("issue")
	}

	if buf.Len() != len(str) {
		fmt.Printf("%s: buf.Len() == %d, len(buf.String()) == %d\n", testname, buf.Len(), len(str))
		panic("issue")
	}

	if buf.Len() != len(s) {
		fmt.Printf("%s: buf.Len() == %d, len(s) == %d\n", testname, buf.Len(), len(s))
		panic("issue")
	}

	if string(bytes) != s {
		fmt.Printf("%s: string(buf.Bytes()) == %q, s == %q\n", testname, string(bytes), s)
		panic("issue")
	}
}
