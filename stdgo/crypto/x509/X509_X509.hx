package stdgo.crypto.x509;
/**
    Package x509 implements a subset of the X.509 standard.
    
    It allows parsing and generating certificates, certificate signing
    requests, certificate revocation lists, and encoded public and private keys.
    It provides a certificate verifier, complete with a chain builder.
    
    The package targets the X.509 technical profile defined by the IETF (RFC
    2459/3280/5280), and as further restricted by the CA/Browser Forum Baseline
    Requirements. There is minimal support for features outside of these
    profiles, as the primary goal of the package is to provide compatibility
    with the publicly trusted TLS certificate ecosystem and its policies and
    constraints.
    
    On macOS and Windows, certificate verification is handled by system APIs, but
    the package aims to apply consistent validation rules across operating
    systems.
**/
class X509 {
    /**
        NewCertPool returns a new, empty CertPool.
    **/
    static public inline function newCertPool():CertPool {
        return stdgo._internal.crypto.x509.X509_newCertPool.newCertPool();
    }
    /**
        SystemCertPool returns a copy of the system cert pool.
        
        On Unix systems other than macOS the environment variables SSL_CERT_FILE and
        SSL_CERT_DIR can be used to override the system default locations for the SSL
        certificate file and SSL certificate files directory, respectively. The
        latter can be a colon-separated list.
        
        Any mutations to the returned pool are not written to disk and do not affect
        any other pool returned by SystemCertPool.
        
        New changes in the system cert pool might not be reflected in subsequent calls.
    **/
    static public inline function systemCertPool():stdgo.Tuple<CertPool, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.x509.X509_systemCertPool.systemCertPool();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseCertificate parses a single certificate from the given ASN.1 DER data.
    **/
    static public inline function parseCertificate(_der:Array<std.UInt>):stdgo.Tuple<Certificate, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseCertificates parses one or more certificates from the given ASN.1 DER
        data. The certificates must be concatenated with no intermediate padding.
    **/
    static public inline function parseCertificates(_der:Array<std.UInt>):stdgo.Tuple<Array<Certificate>, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificates.parseCertificates(_der);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseRevocationList parses a X509 v2 Certificate Revocation List from the given
        ASN.1 DER data.
    **/
    static public inline function parseRevocationList(_der:Array<std.UInt>):stdgo.Tuple<RevocationList, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseRevocationList.parseRevocationList(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsEncryptedPEMBlock returns whether the PEM block is password encrypted
        according to RFC 1423.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function isEncryptedPEMBlock(_b:stdgo._internal.encoding.pem.Pem_Block.Block):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        return stdgo._internal.crypto.x509.X509_isEncryptedPEMBlock.isEncryptedPEMBlock(_b);
    }
    /**
        DecryptPEMBlock takes a PEM block encrypted according to RFC 1423 and the
        password used to encrypt it and returns a slice of decrypted DER encoded
        bytes. It inspects the DEK-Info header to determine the algorithm used for
        decryption. If no DEK-Info header is present, an error is returned. If an
        incorrect password is detected an IncorrectPasswordError is returned. Because
        of deficiencies in the format, it's not always possible to detect an
        incorrect password. In these cases no error will be returned but the
        decrypted DER bytes will be random noise.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function decryptPEMBlock(_b:stdgo._internal.encoding.pem.Pem_Block.Block, _password:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_decryptPEMBlock.decryptPEMBlock(_b, _password);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        EncryptPEMBlock returns a PEM block of the specified type holding the
        given DER encoded data encrypted with the specified algorithm and
        password according to RFC 1423.
        
        Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        design. Since it does not authenticate the ciphertext, it is vulnerable to
        padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function encryptPEMBlock(_rand:stdgo._internal.io.Io_Reader.Reader, _blockType:String, _data:Array<std.UInt>, _password:Array<std.UInt>, _alg:PEMCipher):stdgo.Tuple<stdgo._internal.encoding.pem.Pem_Block.Block, stdgo.Error> {
        final _blockType = (_blockType : stdgo.GoString);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _password = ([for (i in _password) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_encryptPEMBlock.encryptPEMBlock(_rand, _blockType, _data, _password, _alg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParsePKCS1PrivateKey parses an RSA private key in PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
    **/
    static public inline function parsePKCS1PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS1PrivateKey.parsePKCS1PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS1PrivateKey converts an RSA private key to PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
        For a more flexible key format which is not RSA specific, use
        MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalPKCS1PrivateKey(_key:stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey):Array<std.UInt> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        return [for (i in stdgo._internal.crypto.x509.X509_marshalPKCS1PrivateKey.marshalPKCS1PrivateKey(_key)) i];
    }
    /**
        ParsePKCS1PublicKey parses an RSA public key in PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function parsePKCS1PublicKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS1PublicKey.parsePKCS1PublicKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS1PublicKey converts an RSA public key to PKCS #1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function marshalPKCS1PublicKey(_key:stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey):Array<std.UInt> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>);
        return [for (i in stdgo._internal.crypto.x509.X509_marshalPKCS1PublicKey.marshalPKCS1PublicKey(_key)) i];
    }
    /**
        ParsePKCS8PrivateKey parses an unencrypted private key in PKCS #8, ASN.1 DER form.
        
        It returns a *rsa.PrivateKey, an *ecdsa.PrivateKey, an ed25519.PrivateKey (not
        a pointer), or an *ecdh.PrivateKey (for X25519). More types might be supported
        in the future.
        
        This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function parsePKCS8PrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKCS8PrivateKey.parsePKCS8PrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKCS8PrivateKey converts a private key to PKCS #8, ASN.1 DER form.
        
        The following key types are currently supported: *rsa.PrivateKey,
        *ecdsa.PrivateKey, ed25519.PrivateKey (not a pointer), and *ecdh.PrivateKey.
        Unsupported key types result in an error.
        
        This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalPKCS8PrivateKey.marshalPKCS8PrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        SetFallbackRoots sets the roots to use during certificate verification, if no
        custom roots are specified and a platform verifier or a system certificate
        pool is not available (for instance in a container which does not have a root
        certificate bundle). SetFallbackRoots will panic if roots is nil.
        
        SetFallbackRoots may only be called once, if called multiple times it will
        panic.
        
        The fallback behavior can be forced on all platforms, even when there is a
        system certificate pool, by setting GODEBUG=x509usefallbackroots=1 (note that
        on Windows and macOS this will disable usage of the platform verification
        APIs and cause the pure Go verifier to be used). Setting
        x509usefallbackroots=1 without calling SetFallbackRoots has no effect.
    **/
    static public inline function setFallbackRoots(_roots:CertPool):Void {
        final _roots = (_roots : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>);
        stdgo._internal.crypto.x509.X509_setFallbackRoots.setFallbackRoots(_roots);
    }
    /**
        ParseECPrivateKey parses an EC private key in SEC 1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
    **/
    static public inline function parseECPrivateKey(_der:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey, stdgo.Error> {
        final _der = ([for (i in _der) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseECPrivateKey.parseECPrivateKey(_der);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalECPrivateKey converts an EC private key to SEC 1, ASN.1 DER form.
        
        This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
        For a more flexible key format which is not EC specific, use
        MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalECPrivateKey(_key:stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalECPrivateKey.marshalECPrivateKey(_key);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParsePKIXPublicKey parses a public key in PKIX, ASN.1 DER form. The encoded
        public key is a SubjectPublicKeyInfo structure (see RFC 5280, Section 4.1).
        
        It returns a *rsa.PublicKey, *dsa.PublicKey, *ecdsa.PublicKey,
        ed25519.PublicKey (not a pointer), or *ecdh.PublicKey (for X25519).
        More types might be supported in the future.
        
        This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function parsePKIXPublicKey(_derBytes:Array<std.UInt>):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parsePKIXPublicKey.parsePKIXPublicKey(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MarshalPKIXPublicKey converts a public key to PKIX, ASN.1 DER form.
        The encoded public key is a SubjectPublicKeyInfo structure
        (see RFC 5280, Section 4.1).
        
        The following key types are currently supported: *rsa.PublicKey,
        *ecdsa.PublicKey, ed25519.PublicKey (not a pointer), and *ecdh.PublicKey.
        Unsupported key types result in an error.
        
        This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _pub = (_pub : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_marshalPKIXPublicKey.marshalPKIXPublicKey(_pub);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        CreateCertificate creates a new X.509 v3 certificate based on a template.
        The following members of template are currently used:
        
          - AuthorityKeyId
          - BasicConstraintsValid
          - CRLDistributionPoints
          - DNSNames
          - EmailAddresses
          - ExcludedDNSDomains
          - ExcludedEmailAddresses
          - ExcludedIPRanges
          - ExcludedURIDomains
          - ExtKeyUsage
          - ExtraExtensions
          - IPAddresses
          - IsCA
          - IssuingCertificateURL
          - KeyUsage
          - MaxPathLen
          - MaxPathLenZero
          - NotAfter
          - NotBefore
          - OCSPServer
          - PermittedDNSDomains
          - PermittedDNSDomainsCritical
          - PermittedEmailAddresses
          - PermittedIPRanges
          - PermittedURIDomains
          - PolicyIdentifiers
          - SerialNumber
          - SignatureAlgorithm
          - Subject
          - SubjectKeyId
          - URIs
          - UnknownExtKeyUsage
        
        The certificate is signed by parent. If parent is equal to template then the
        certificate is self-signed. The parameter pub is the public key of the
        certificate to be generated and priv is the private key of the signer.
        
        The returned slice is the certificate in DER encoding.
        
        The currently supported key types are *rsa.PublicKey, *ecdsa.PublicKey and
        ed25519.PublicKey. pub must be a supported key type, and priv must be a
        crypto.Signer with a supported public key.
        
        The AuthorityKeyId will be taken from the SubjectKeyId of parent, if any,
        unless the resulting certificate is self-signed. Otherwise the value from
        template will be used.
        
        If SubjectKeyId from template is empty and the template is a CA, SubjectKeyId
        will be generated from the hash of the public key.
    **/
    static public inline function createCertificate(_rand:stdgo._internal.io.Io_Reader.Reader, _template:Certificate, _parent:Certificate, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        final _pub = (_pub : stdgo.AnyInterface);
        final _priv = (_priv : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createCertificate.createCertificate(_rand, _template, _parent, _pub, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseCRL parses a CRL from the given bytes. It's often the case that PEM
        encoded CRLs will appear where they should be DER encoded, so this function
        will transparently handle PEM encoding as long as there isn't any leading
        garbage.
        
        Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseCRL(_crlBytes:Array<std.UInt>):stdgo.Tuple<CertificateList, stdgo.Error> {
        final _crlBytes = ([for (i in _crlBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCRL.parseCRL(_crlBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseDERCRL parses a DER encoded CRL from the given bytes.
        
        Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseDERCRL(_derBytes:Array<std.UInt>):stdgo.Tuple<CertificateList, stdgo.Error> {
        final _derBytes = ([for (i in _derBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseDERCRL.parseDERCRL(_derBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateCertificateRequest creates a new certificate request based on a
        template. The following members of template are used:
        
          - SignatureAlgorithm
          - Subject
          - DNSNames
          - EmailAddresses
          - IPAddresses
          - URIs
          - ExtraExtensions
          - Attributes (deprecated)
        
        priv is the private key to sign the CSR with, and the corresponding public
        key will be included in the CSR. It must implement crypto.Signer and its
        Public() method must return a *rsa.PublicKey or a *ecdsa.PublicKey or a
        ed25519.PublicKey. (A *rsa.PrivateKey, *ecdsa.PrivateKey or
        ed25519.PrivateKey satisfies this.)
        
        The returned slice is the certificate request in DER encoding.
    **/
    static public inline function createCertificateRequest(_rand:stdgo._internal.io.Io_Reader.Reader, _template:CertificateRequest, _priv:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>);
        final _priv = (_priv : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createCertificateRequest.createCertificateRequest(_rand, _template, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseCertificateRequest parses a single certificate request from the
        given ASN.1 DER data.
    **/
    static public inline function parseCertificateRequest(_asn1Data:Array<std.UInt>):stdgo.Tuple<CertificateRequest, stdgo.Error> {
        final _asn1Data = ([for (i in _asn1Data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_parseCertificateRequest.parseCertificateRequest(_asn1Data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateRevocationList creates a new X.509 v2 Certificate Revocation List,
        according to RFC 5280, based on template.
        
        The CRL is signed by priv which should be the private key associated with
        the public key in the issuer certificate.
        
        The issuer may not be nil, and the crlSign bit must be set in KeyUsage in
        order to use it as a CRL issuer.
        
        The issuer distinguished name CRL field and authority key identifier
        extension are populated using the issuer certificate. issuer must have
        SubjectKeyId set.
    **/
    static public inline function createRevocationList(_rand:stdgo._internal.io.Io_Reader.Reader, _template:RevocationList, _issuer:Certificate, _priv:stdgo._internal.crypto.Crypto_Signer.Signer):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _template = (_template : stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>);
        final _issuer = (_issuer : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return {
            final obj = stdgo._internal.crypto.x509.X509_createRevocationList.createRevocationList(_rand, _template, _issuer, _priv);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
