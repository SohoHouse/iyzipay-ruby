# 1.2.2 (2025-03-25)
- Added `paidPrice` processing for signature check in same way as `price`. 

# 1.2.1 (2025-03-10)
- Added handling for responses inside a failed signature exception.

# 1.2.0 (2024-12-31)
- Added payments API response's signature validation.

# 1.1.0 (2024-11-22)
- Changed signature algorithm to `HMAC SHA256` to meet Iyzipay API requirements.
- Removed `pki_string` generation as obsolete.
- Extracted Signer class to handle signature generation.
- Model's classes cleaned up.
- Update specs to accept API credentials from environment variables.
