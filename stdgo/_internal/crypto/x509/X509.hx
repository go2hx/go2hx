package stdgo._internal.crypto.x509;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.x509.X509__rfc1423Algos._rfc1423Algos, __tmp__1 = stdgo._internal.crypto.x509.X509_incorrectPasswordError.incorrectPasswordError, __tmp__2 = stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots, __tmp__3 = stdgo._internal.crypto.x509.X509__certFiles._certFiles, __tmp__4 = stdgo._internal.crypto.x509.X509__certDirectories._certDirectories, __tmp__5 = stdgo._internal.crypto.x509.X509__errNotParsed._errNotParsed, __tmp__6 = stdgo._internal.crypto.x509.X509__publicKeyAlgoName._publicKeyAlgoName, __tmp__7 = stdgo._internal.crypto.x509.X509__oidSignatureMD2WithRSA._oidSignatureMD2WithRSA, __tmp__8 = stdgo._internal.crypto.x509.X509__oidSignatureMD5WithRSA._oidSignatureMD5WithRSA, __tmp__9 = stdgo._internal.crypto.x509.X509__oidSignatureSHA1WithRSA._oidSignatureSHA1WithRSA, __tmp__10 = stdgo._internal.crypto.x509.X509__oidSignatureSHA256WithRSA._oidSignatureSHA256WithRSA, __tmp__11 = stdgo._internal.crypto.x509.X509__oidSignatureSHA384WithRSA._oidSignatureSHA384WithRSA, __tmp__12 = stdgo._internal.crypto.x509.X509__oidSignatureSHA512WithRSA._oidSignatureSHA512WithRSA, __tmp__13 = stdgo._internal.crypto.x509.X509__oidSignatureRSAPSS._oidSignatureRSAPSS, __tmp__14 = stdgo._internal.crypto.x509.X509__oidSignatureDSAWithSHA1._oidSignatureDSAWithSHA1, __tmp__15 = stdgo._internal.crypto.x509.X509__oidSignatureDSAWithSHA256._oidSignatureDSAWithSHA256, __tmp__16 = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA1._oidSignatureECDSAWithSHA1, __tmp__17 = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA256._oidSignatureECDSAWithSHA256, __tmp__18 = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA384._oidSignatureECDSAWithSHA384, __tmp__19 = stdgo._internal.crypto.x509.X509__oidSignatureECDSAWithSHA512._oidSignatureECDSAWithSHA512, __tmp__20 = stdgo._internal.crypto.x509.X509__oidSignatureEd25519._oidSignatureEd25519, __tmp__21 = stdgo._internal.crypto.x509.X509__oidSHA256._oidSHA256, __tmp__22 = stdgo._internal.crypto.x509.X509__oidSHA384._oidSHA384, __tmp__23 = stdgo._internal.crypto.x509.X509__oidSHA512._oidSHA512, __tmp__24 = stdgo._internal.crypto.x509.X509__oidMGF1._oidMGF1, __tmp__25 = stdgo._internal.crypto.x509.X509__oidISOSignatureSHA1WithRSA._oidISOSignatureSHA1WithRSA, __tmp__26 = stdgo._internal.crypto.x509.X509__signatureAlgorithmDetails._signatureAlgorithmDetails, __tmp__27 = stdgo._internal.crypto.x509.X509__hashToPSSParameters._hashToPSSParameters, __tmp__28 = stdgo._internal.crypto.x509.X509__oidPublicKeyRSA._oidPublicKeyRSA, __tmp__29 = stdgo._internal.crypto.x509.X509__oidPublicKeyDSA._oidPublicKeyDSA, __tmp__30 = stdgo._internal.crypto.x509.X509__oidPublicKeyECDSA._oidPublicKeyECDSA, __tmp__31 = stdgo._internal.crypto.x509.X509__oidPublicKeyX25519._oidPublicKeyX25519, __tmp__32 = stdgo._internal.crypto.x509.X509__oidPublicKeyEd25519._oidPublicKeyEd25519, __tmp__33 = stdgo._internal.crypto.x509.X509__oidNamedCurveP224._oidNamedCurveP224, __tmp__34 = stdgo._internal.crypto.x509.X509__oidNamedCurveP256._oidNamedCurveP256, __tmp__35 = stdgo._internal.crypto.x509.X509__oidNamedCurveP384._oidNamedCurveP384, __tmp__36 = stdgo._internal.crypto.x509.X509__oidNamedCurveP521._oidNamedCurveP521, __tmp__37 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageAny._oidExtKeyUsageAny, __tmp__38 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageServerAuth._oidExtKeyUsageServerAuth, __tmp__39 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageClientAuth._oidExtKeyUsageClientAuth, __tmp__40 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageCodeSigning._oidExtKeyUsageCodeSigning, __tmp__41 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageEmailProtection._oidExtKeyUsageEmailProtection, __tmp__42 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECEndSystem._oidExtKeyUsageIPSECEndSystem, __tmp__43 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECTunnel._oidExtKeyUsageIPSECTunnel, __tmp__44 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageIPSECUser._oidExtKeyUsageIPSECUser, __tmp__45 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageTimeStamping._oidExtKeyUsageTimeStamping, __tmp__46 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageOCSPSigning._oidExtKeyUsageOCSPSigning, __tmp__47 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftServerGatedCrypto._oidExtKeyUsageMicrosoftServerGatedCrypto, __tmp__48 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageNetscapeServerGatedCrypto._oidExtKeyUsageNetscapeServerGatedCrypto, __tmp__49 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftCommercialCodeSigning._oidExtKeyUsageMicrosoftCommercialCodeSigning, __tmp__50 = stdgo._internal.crypto.x509.X509__oidExtKeyUsageMicrosoftKernelCodeSigning._oidExtKeyUsageMicrosoftKernelCodeSigning, __tmp__51 = stdgo._internal.crypto.x509.X509__extKeyUsageOIDs._extKeyUsageOIDs, __tmp__52 = stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm, __tmp__53 = stdgo._internal.crypto.x509.X509__x509sha1._x509sha1, __tmp__54 = stdgo._internal.crypto.x509.X509__oidExtensionSubjectKeyId._oidExtensionSubjectKeyId, __tmp__55 = stdgo._internal.crypto.x509.X509__oidExtensionKeyUsage._oidExtensionKeyUsage, __tmp__56 = stdgo._internal.crypto.x509.X509__oidExtensionExtendedKeyUsage._oidExtensionExtendedKeyUsage, __tmp__57 = stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId, __tmp__58 = stdgo._internal.crypto.x509.X509__oidExtensionBasicConstraints._oidExtensionBasicConstraints, __tmp__59 = stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, __tmp__60 = stdgo._internal.crypto.x509.X509__oidExtensionCertificatePolicies._oidExtensionCertificatePolicies, __tmp__61 = stdgo._internal.crypto.x509.X509__oidExtensionNameConstraints._oidExtensionNameConstraints, __tmp__62 = stdgo._internal.crypto.x509.X509__oidExtensionCRLDistributionPoints._oidExtensionCRLDistributionPoints, __tmp__63 = stdgo._internal.crypto.x509.X509__oidExtensionAuthorityInfoAccess._oidExtensionAuthorityInfoAccess, __tmp__64 = stdgo._internal.crypto.x509.X509__oidExtensionCRLNumber._oidExtensionCRLNumber, __tmp__65 = stdgo._internal.crypto.x509.X509__oidExtensionReasonCode._oidExtensionReasonCode, __tmp__66 = stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessOcsp._oidAuthorityInfoAccessOcsp, __tmp__67 = stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessIssuers._oidAuthorityInfoAccessIssuers, __tmp__68 = stdgo._internal.crypto.x509.X509__emptyASN1Subject._emptyASN1Subject, __tmp__69 = stdgo._internal.crypto.x509.X509__pemCRLPrefix._pemCRLPrefix, __tmp__70 = stdgo._internal.crypto.x509.X509__pemType._pemType, __tmp__71 = stdgo._internal.crypto.x509.X509__oidExtensionRequest._oidExtensionRequest, __tmp__72 = stdgo._internal.crypto.x509.X509___0.__0;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
