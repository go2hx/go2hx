package stdgo.crypto.x509;
var pEMCipherDES : PEMCipher = 1i64;
var pEMCipher3DES : PEMCipher = 2i64;
var pEMCipherAES128 : PEMCipher = 3i64;
var pEMCipherAES192 : PEMCipher = 4i64;
var pEMCipherAES256 : PEMCipher = 5i64;
var notAuthorizedToSign : InvalidReason = 0i64;
var expired : InvalidReason = 1i64;
var cANotAuthorizedForThisName : InvalidReason = 2i64;
var tooManyIntermediates : InvalidReason = 3i64;
var incompatibleUsage : InvalidReason = 4i64;
var nameMismatch : InvalidReason = 5i64;
var nameConstraintsWithoutSANs : InvalidReason = 6i64;
var unconstrainedName : InvalidReason = 7i64;
var tooManyConstraints : InvalidReason = 8i64;
var cANotAuthorizedForExtKeyUsage : InvalidReason = 9i64;
var unknownSignatureAlgorithm : SignatureAlgorithm = 0i64;
var mD2WithRSA : SignatureAlgorithm = 1i64;
var mD5WithRSA : SignatureAlgorithm = 2i64;
var sHA1WithRSA : SignatureAlgorithm = 3i64;
var sHA256WithRSA : SignatureAlgorithm = 4i64;
var sHA384WithRSA : SignatureAlgorithm = 5i64;
var sHA512WithRSA : SignatureAlgorithm = 6i64;
var dSAWithSHA1 : SignatureAlgorithm = 7i64;
var dSAWithSHA256 : SignatureAlgorithm = 8i64;
var eCDSAWithSHA1 : SignatureAlgorithm = 9i64;
var eCDSAWithSHA256 : SignatureAlgorithm = 10i64;
var eCDSAWithSHA384 : SignatureAlgorithm = 11i64;
var eCDSAWithSHA512 : SignatureAlgorithm = 12i64;
var sHA256WithRSAPSS : SignatureAlgorithm = 13i64;
var sHA384WithRSAPSS : SignatureAlgorithm = 14i64;
var sHA512WithRSAPSS : SignatureAlgorithm = 15i64;
var pureEd25519 : SignatureAlgorithm = 16i64;
var unknownPublicKeyAlgorithm : PublicKeyAlgorithm = 0i64;
var rSA : PublicKeyAlgorithm = 1i64;
var dSA : PublicKeyAlgorithm = 2i64;
var eCDSA : PublicKeyAlgorithm = 3i64;
var ed25519 : PublicKeyAlgorithm = 4i64;
var keyUsageDigitalSignature : KeyUsage = 1i64;
var keyUsageContentCommitment : KeyUsage = 2i64;
var keyUsageKeyEncipherment : KeyUsage = 4i64;
var keyUsageDataEncipherment : KeyUsage = 8i64;
var keyUsageKeyAgreement : KeyUsage = 16i64;
var keyUsageCertSign : KeyUsage = 32i64;
var keyUsageCRLSign : KeyUsage = 64i64;
var keyUsageEncipherOnly : KeyUsage = 128i64;
var keyUsageDecipherOnly : KeyUsage = 256i64;
var extKeyUsageAny : ExtKeyUsage = 0i64;
var extKeyUsageServerAuth : ExtKeyUsage = 1i64;
var extKeyUsageClientAuth : ExtKeyUsage = 2i64;
var extKeyUsageCodeSigning : ExtKeyUsage = 3i64;
var extKeyUsageEmailProtection : ExtKeyUsage = 4i64;
var extKeyUsageIPSECEndSystem : ExtKeyUsage = 5i64;
var extKeyUsageIPSECTunnel : ExtKeyUsage = 6i64;
var extKeyUsageIPSECUser : ExtKeyUsage = 7i64;
var extKeyUsageTimeStamping : ExtKeyUsage = 8i64;
var extKeyUsageOCSPSigning : ExtKeyUsage = 9i64;
var extKeyUsageMicrosoftServerGatedCrypto : ExtKeyUsage = 10i64;
var extKeyUsageNetscapeServerGatedCrypto : ExtKeyUsage = 11i64;
var extKeyUsageMicrosoftCommercialCodeSigning : ExtKeyUsage = 12i64;
var extKeyUsageMicrosoftKernelCodeSigning : ExtKeyUsage = 13i64;
var incorrectPasswordError(get, set) : stdgo.Error;
private function get_incorrectPasswordError():stdgo.Error return stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError;
private function set_incorrectPasswordError(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_incorrectpassworderror.incorrectPasswordError = v;
        return v;
    }
var errUnsupportedAlgorithm(get, set) : stdgo.Error;
private function get_errUnsupportedAlgorithm():stdgo.Error return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
private function set_errUnsupportedAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm = v;
        return v;
    }
typedef CertPool = stdgo._internal.crypto.x509.X509_certpool.CertPool;
typedef CertificateInvalidError = stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError;
typedef HostnameError = stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError;
typedef UnknownAuthorityError = stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError;
typedef SystemRootsError = stdgo._internal.crypto.x509.X509_systemrootserror.SystemRootsError;
typedef VerifyOptions = stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions;
typedef Certificate = stdgo._internal.crypto.x509.X509_certificate.Certificate;
typedef ConstraintViolationError = stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError;
typedef UnhandledCriticalExtension = stdgo._internal.crypto.x509.X509_unhandledcriticalextension.UnhandledCriticalExtension;
typedef CertificateRequest = stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest;
typedef RevocationListEntry = stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry;
typedef RevocationList = stdgo._internal.crypto.x509.X509_revocationlist.RevocationList;
typedef PEMCipher = stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher;
typedef InvalidReason = stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason;
typedef SignatureAlgorithm = stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm;
typedef PublicKeyAlgorithm = stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm;
typedef KeyUsage = stdgo._internal.crypto.x509.X509_keyusage.KeyUsage;
typedef ExtKeyUsage = stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage;
typedef InsecureAlgorithmError = stdgo._internal.crypto.x509.X509_insecurealgorithmerror.InsecureAlgorithmError;
typedef CertPoolPointer = stdgo._internal.crypto.x509.X509_certpoolpointer.CertPoolPointer;
typedef CertificateInvalidErrorPointer = stdgo._internal.crypto.x509.X509_certificateinvaliderrorpointer.CertificateInvalidErrorPointer;
typedef HostnameErrorPointer = stdgo._internal.crypto.x509.X509_hostnameerrorpointer.HostnameErrorPointer;
typedef UnknownAuthorityErrorPointer = stdgo._internal.crypto.x509.X509_unknownauthorityerrorpointer.UnknownAuthorityErrorPointer;
typedef SystemRootsErrorPointer = stdgo._internal.crypto.x509.X509_systemrootserrorpointer.SystemRootsErrorPointer;
typedef VerifyOptionsPointer = stdgo._internal.crypto.x509.X509_verifyoptionspointer.VerifyOptionsPointer;
typedef CertificatePointer = stdgo._internal.crypto.x509.X509_certificatepointer.CertificatePointer;
typedef ConstraintViolationErrorPointer = stdgo._internal.crypto.x509.X509_constraintviolationerrorpointer.ConstraintViolationErrorPointer;
typedef UnhandledCriticalExtensionPointer = stdgo._internal.crypto.x509.X509_unhandledcriticalextensionpointer.UnhandledCriticalExtensionPointer;
typedef CertificateRequestPointer = stdgo._internal.crypto.x509.X509_certificaterequestpointer.CertificateRequestPointer;
typedef RevocationListEntryPointer = stdgo._internal.crypto.x509.X509_revocationlistentrypointer.RevocationListEntryPointer;
typedef RevocationListPointer = stdgo._internal.crypto.x509.X509_revocationlistpointer.RevocationListPointer;
typedef PEMCipherPointer = stdgo._internal.crypto.x509.X509_pemcipherpointer.PEMCipherPointer;
typedef InvalidReasonPointer = stdgo._internal.crypto.x509.X509_invalidreasonpointer.InvalidReasonPointer;
typedef SignatureAlgorithmPointer = stdgo._internal.crypto.x509.X509_signaturealgorithmpointer.SignatureAlgorithmPointer;
typedef PublicKeyAlgorithmPointer = stdgo._internal.crypto.x509.X509_publickeyalgorithmpointer.PublicKeyAlgorithmPointer;
typedef KeyUsagePointer = stdgo._internal.crypto.x509.X509_keyusagepointer.KeyUsagePointer;
typedef ExtKeyUsagePointer = stdgo._internal.crypto.x509.X509_extkeyusagepointer.ExtKeyUsagePointer;
typedef InsecureAlgorithmErrorPointer = stdgo._internal.crypto.x509.X509_insecurealgorithmerrorpointer.InsecureAlgorithmErrorPointer;
/**
    * Package x509 implements a subset of the X.509 standard.
    * 
    * It allows parsing and generating certificates, certificate signing
    * requests, certificate revocation lists, and encoded public and private keys.
    * It provides a certificate verifier, complete with a chain builder.
    * 
    * The package targets the X.509 technical profile defined by the IETF (RFC
    * 2459/3280/5280), and as further restricted by the CA/Browser Forum Baseline
    * Requirements. There is minimal support for features outside of these
    * profiles, as the primary goal of the package is to provide compatibility
    * with the publicly trusted TLS certificate ecosystem and its policies and
    * constraints.
    * 
    * On macOS and Windows, certificate verification is handled by system APIs, but
    * the package aims to apply consistent validation rules across operating
    * systems.
**/
class X509 {
    /**
        * NewCertPool returns a new, empty CertPool.
    **/
    static public inline function newCertPool():stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> return stdgo._internal.crypto.x509.X509_newcertpool.newCertPool();
    /**
        * SystemCertPool returns a copy of the system cert pool.
        * 
        * On Unix systems other than macOS the environment variables SSL_CERT_FILE and
        * SSL_CERT_DIR can be used to override the system default locations for the SSL
        * certificate file and SSL certificate files directory, respectively. The
        * latter can be a colon-separated list.
        * 
        * Any mutations to the returned pool are not written to disk and do not affect
        * any other pool returned by SystemCertPool.
        * 
        * New changes in the system cert pool might not be reflected in subsequent calls.
    **/
    static public inline function systemCertPool():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_systemcertpool.systemCertPool();
    /**
        * ParseCertificate parses a single certificate from the given ASN.1 DER data.
    **/
    static public inline function parseCertificate(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_der);
    /**
        * ParseCertificates parses one or more certificates from the given ASN.1 DER
        * data. The certificates must be concatenated with no intermediate padding.
    **/
    static public inline function parseCertificates(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsecertificates.parseCertificates(_der);
    /**
        * ParseRevocationList parses a X509 v2 Certificate Revocation List from the given
        * ASN.1 DER data.
    **/
    static public inline function parseRevocationList(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parserevocationlist.parseRevocationList(_der);
    /**
        * IsEncryptedPEMBlock returns whether the PEM block is password encrypted
        * according to RFC 1423.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function isEncryptedPEMBlock(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>):Bool return stdgo._internal.crypto.x509.X509_isencryptedpemblock.isEncryptedPEMBlock(_b);
    /**
        * DecryptPEMBlock takes a PEM block encrypted according to RFC 1423 and the
        * password used to encrypt it and returns a slice of decrypted DER encoded
        * bytes. It inspects the DEK-Info header to determine the algorithm used for
        * decryption. If no DEK-Info header is present, an error is returned. If an
        * incorrect password is detected an IncorrectPasswordError is returned. Because
        * of deficiencies in the format, it's not always possible to detect an
        * incorrect password. In these cases no error will be returned but the
        * decrypted DER bytes will be random noise.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function decryptPEMBlock(_b:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>, _password:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_decryptpemblock.decryptPEMBlock(_b, _password);
    /**
        * EncryptPEMBlock returns a PEM block of the specified type holding the
        * given DER encoded data encrypted with the specified algorithm and
        * password according to RFC 1423.
        * 
        * Deprecated: Legacy PEM encryption as specified in RFC 1423 is insecure by
        * design. Since it does not authenticate the ciphertext, it is vulnerable to
        * padding oracle attacks that can let an attacker recover the plaintext.
    **/
    static public inline function encryptPEMBlock(_rand:stdgo._internal.io.Io_reader.Reader, _blockType:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>, _password:stdgo.Slice<stdgo.GoUInt8>, _alg:PEMCipher):{ var _0 : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_encryptpemblock.encryptPEMBlock(_rand, _blockType, _data, _password, _alg);
    /**
        * ParsePKCS1PrivateKey parses an RSA private key in PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
    **/
    static public inline function parsePKCS1PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_der);
    /**
        * MarshalPKCS1PrivateKey converts an RSA private key to PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PRIVATE KEY".
        * For a more flexible key format which is not RSA specific, use
        * MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalPKCS1PrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.crypto.x509.X509_marshalpkcs1privatekey.marshalPKCS1PrivateKey(_key);
    /**
        * ParsePKCS1PublicKey parses an RSA public key in PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function parsePKCS1PublicKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsepkcs1publickey.parsePKCS1PublicKey(_der);
    /**
        * MarshalPKCS1PublicKey converts an RSA public key to PKCS #1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "RSA PUBLIC KEY".
    **/
    static public inline function marshalPKCS1PublicKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.crypto.x509.X509_marshalpkcs1publickey.marshalPKCS1PublicKey(_key);
    /**
        * ParsePKCS8PrivateKey parses an unencrypted private key in PKCS #8, ASN.1 DER form.
        * 
        * It returns a *rsa.PrivateKey, an *ecdsa.PrivateKey, an ed25519.PrivateKey (not
        * a pointer), or an *ecdh.PrivateKey (for X25519). More types might be supported
        * in the future.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function parsePKCS8PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsepkcs8privatekey.parsePKCS8PrivateKey(_der);
    /**
        * MarshalPKCS8PrivateKey converts a private key to PKCS #8, ASN.1 DER form.
        * 
        * The following key types are currently supported: *rsa.PrivateKey,
        * *ecdsa.PrivateKey, ed25519.PrivateKey (not a pointer), and *ecdh.PrivateKey.
        * Unsupported key types result in an error.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PRIVATE KEY".
    **/
    static public inline function marshalPKCS8PrivateKey(_key:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_marshalpkcs8privatekey.marshalPKCS8PrivateKey(_key);
    /**
        * SetFallbackRoots sets the roots to use during certificate verification, if no
        * custom roots are specified and a platform verifier or a system certificate
        * pool is not available (for instance in a container which does not have a root
        * certificate bundle). SetFallbackRoots will panic if roots is nil.
        * 
        * SetFallbackRoots may only be called once, if called multiple times it will
        * panic.
        * 
        * The fallback behavior can be forced on all platforms, even when there is a
        * system certificate pool, by setting GODEBUG=x509usefallbackroots=1 (note that
        * on Windows and macOS this will disable usage of the platform verification
        * APIs and cause the pure Go verifier to be used). Setting
        * x509usefallbackroots=1 without calling SetFallbackRoots has no effect.
    **/
    static public inline function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Void stdgo._internal.crypto.x509.X509_setfallbackroots.setFallbackRoots(_roots);
    /**
        * ParseECPrivateKey parses an EC private key in SEC 1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
    **/
    static public inline function parseECPrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parseecprivatekey.parseECPrivateKey(_der);
    /**
        * MarshalECPrivateKey converts an EC private key to SEC 1, ASN.1 DER form.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "EC PRIVATE KEY".
        * For a more flexible key format which is not EC specific, use
        * MarshalPKCS8PrivateKey.
    **/
    static public inline function marshalECPrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_marshalecprivatekey.marshalECPrivateKey(_key);
    /**
        * ParsePKIXPublicKey parses a public key in PKIX, ASN.1 DER form. The encoded
        * public key is a SubjectPublicKeyInfo structure (see RFC 5280, Section 4.1).
        * 
        * It returns a *rsa.PublicKey, *dsa.PublicKey, *ecdsa.PublicKey,
        * ed25519.PublicKey (not a pointer), or *ecdh.PublicKey (for X25519).
        * More types might be supported in the future.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function parsePKIXPublicKey(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsepkixpublickey.parsePKIXPublicKey(_derBytes);
    /**
        * MarshalPKIXPublicKey converts a public key to PKIX, ASN.1 DER form.
        * The encoded public key is a SubjectPublicKeyInfo structure
        * (see RFC 5280, Section 4.1).
        * 
        * The following key types are currently supported: *rsa.PublicKey,
        * *ecdsa.PublicKey, ed25519.PublicKey (not a pointer), and *ecdh.PublicKey.
        * Unsupported key types result in an error.
        * 
        * This kind of key is commonly encoded in PEM blocks of type "PUBLIC KEY".
    **/
    static public inline function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_marshalpkixpublickey.marshalPKIXPublicKey(_pub);
    /**
        * CreateCertificate creates a new X.509 v3 certificate based on a template.
        * The following members of template are currently used:
        * 
        *   - AuthorityKeyId
        *   - BasicConstraintsValid
        *   - CRLDistributionPoints
        *   - DNSNames
        *   - EmailAddresses
        *   - ExcludedDNSDomains
        *   - ExcludedEmailAddresses
        *   - ExcludedIPRanges
        *   - ExcludedURIDomains
        *   - ExtKeyUsage
        *   - ExtraExtensions
        *   - IPAddresses
        *   - IsCA
        *   - IssuingCertificateURL
        *   - KeyUsage
        *   - MaxPathLen
        *   - MaxPathLenZero
        *   - NotAfter
        *   - NotBefore
        *   - OCSPServer
        *   - PermittedDNSDomains
        *   - PermittedDNSDomainsCritical
        *   - PermittedEmailAddresses
        *   - PermittedIPRanges
        *   - PermittedURIDomains
        *   - PolicyIdentifiers
        *   - SerialNumber
        *   - SignatureAlgorithm
        *   - Subject
        *   - SubjectKeyId
        *   - URIs
        *   - UnknownExtKeyUsage
        * 
        * The certificate is signed by parent. If parent is equal to template then the
        * certificate is self-signed. The parameter pub is the public key of the
        * certificate to be generated and priv is the private key of the signer.
        * 
        * The returned slice is the certificate in DER encoding.
        * 
        * The currently supported key types are *rsa.PublicKey, *ecdsa.PublicKey and
        * ed25519.PublicKey. pub must be a supported key type, and priv must be a
        * crypto.Signer with a supported public key.
        * 
        * The AuthorityKeyId will be taken from the SubjectKeyId of parent, if any,
        * unless the resulting certificate is self-signed. Otherwise the value from
        * template will be used.
        * 
        * If SubjectKeyId from template is empty and the template is a CA, SubjectKeyId
        * will be generated from the hash of the public key.
    **/
    static public inline function createCertificate(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _pub:stdgo.AnyInterface, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_createcertificate.createCertificate(_rand, _template, _parent, _pub, _priv);
    /**
        * ParseCRL parses a CRL from the given bytes. It's often the case that PEM
        * encoded CRLs will appear where they should be DER encoded, so this function
        * will transparently handle PEM encoding as long as there isn't any leading
        * garbage.
        * 
        * Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseCRL(_crlBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsecrl.parseCRL(_crlBytes);
    /**
        * ParseDERCRL parses a DER encoded CRL from the given bytes.
        * 
        * Deprecated: Use ParseRevocationList instead.
    **/
    static public inline function parseDERCRL(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsedercrl.parseDERCRL(_derBytes);
    /**
        * CreateCertificateRequest creates a new certificate request based on a
        * template. The following members of template are used:
        * 
        *   - SignatureAlgorithm
        *   - Subject
        *   - DNSNames
        *   - EmailAddresses
        *   - IPAddresses
        *   - URIs
        *   - ExtraExtensions
        *   - Attributes (deprecated)
        * 
        * priv is the private key to sign the CSR with, and the corresponding public
        * key will be included in the CSR. It must implement crypto.Signer and its
        * Public() method must return a *rsa.PublicKey or a *ecdsa.PublicKey or a
        * ed25519.PublicKey. (A *rsa.PrivateKey, *ecdsa.PrivateKey or
        * ed25519.PrivateKey satisfies this.)
        * 
        * The returned slice is the certificate request in DER encoding.
    **/
    static public inline function createCertificateRequest(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>, _priv:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_createcertificaterequest.createCertificateRequest(_rand, _template, _priv);
    /**
        * ParseCertificateRequest parses a single certificate request from the
        * given ASN.1 DER data.
    **/
    static public inline function parseCertificateRequest(_asn1Data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_parsecertificaterequest.parseCertificateRequest(_asn1Data);
    /**
        * CreateRevocationList creates a new X.509 v2 Certificate Revocation List,
        * according to RFC 5280, based on template.
        * 
        * The CRL is signed by priv which should be the private key associated with
        * the public key in the issuer certificate.
        * 
        * The issuer may not be nil, and the crlSign bit must be set in KeyUsage in
        * order to use it as a CRL issuer.
        * 
        * The issuer distinguished name CRL field and authority key identifier
        * extension are populated using the issuer certificate. issuer must have
        * SubjectKeyId set.
    **/
    static public inline function createRevocationList(_rand:stdgo._internal.io.Io_reader.Reader, _template:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _issuer:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _priv:stdgo._internal.crypto.Crypto_signer.Signer):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.crypto.x509.X509_createrevocationlist.createRevocationList(_rand, _template, _issuer, _priv);
}
