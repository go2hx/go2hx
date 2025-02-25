package main

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"reflect"
)

func main() {
	var res bool
	var err error
	err = binary.Read(bytes.NewReader([]byte{1}), binary.BigEndian, &res)
	checkResult("ReadBool", binary.BigEndian, err, res, true)

}

func checkResult(dir string, order binary.ByteOrder, err error, have, want any) {
	if err != nil {
		fmt.Printf("%v %v: %v", dir, order, err)
		panic("issue")
	}
	if !reflect.DeepEqual(have, want) {
		fmt.Printf("%v %v:\n\thave %+v\n\twant %+v", dir, order, have, want)
		panic("issue")
	}
}
