package main

import "crypto/cipher"

func main() {
	b := cipher.Block(&testBlock{})
	if _, ok := b.(gcmAble); !ok {
		panic("testBlock does not implement the gcmAble interface")
	}
}

// testBlock implements the cipher.Block interface and any *Able
// interfaces that need to be tested.
type testBlock struct{}

func (*testBlock) BlockSize() int      { return 0 }
func (*testBlock) Encrypt(a, b []byte) {}
func (*testBlock) Decrypt(a, b []byte) {}
func (*testBlock) NewGCM(int, int) (cipher.AEAD, error) {
	return &testAEAD{}, nil
}

// testAEAD implements the cipher.AEAD interface.
type testAEAD struct{}

func (*testAEAD) NonceSize() int                         { return 0 }
func (*testAEAD) Overhead() int                          { return 0 }
func (*testAEAD) Seal(a, b, c, d []byte) []byte          { return []byte{} }
func (*testAEAD) Open(a, b, c, d []byte) ([]byte, error) { return []byte{}, nil }
func (*testAEAD) InAESPackage() bool                     { return true }

// gcmAble is implemented by cipher.Blocks that can provide an optimized
// implementation of GCM through the AEAD interface.
// See crypto/cipher/gcm.go.
type gcmAble interface {
	NewGCM(nonceSize, tagSize int) (cipher.AEAD, error)
}
