# 1.1.0 (2024-11-22)
- Changed signature algorithm to `HMAC SHA256` to meet Iyzipay API requirements.
- Removed `pki_string` generation as obsolete.
- Extracted Signer class to handle signature generation.
- Model's classes cleaned up.
- Update specs to accept API credentials from environment variables.