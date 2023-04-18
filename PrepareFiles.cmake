set(INSTALLED_PACKAGES_DIR "${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}")
message("INSTALLED_PACKAGES_DIR: ${INSTALLED_PACKAGES_DIR}")

set(_EXT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/ext")

if (${VCPKG_TARGET_TRIPLET} MATCHES "x64-windows")
	configure_file("${INSTALLED_PACKAGES_DIR}/bin/libssl-3-x64.dll" "${_EXT_PATH}/openssl/windows/x64/bin/libssl-3-x64.dll" COPYONLY)
	configure_file("${INSTALLED_PACKAGES_DIR}/bin/libcrypto-3-x64.dll" "${_EXT_PATH}/openssl/windows/x64/bin/libcrypto-3-x64.dll" COPYONLY)
	configure_file("${INSTALLED_PACKAGES_DIR}/tools/openssl/openssl.exe" "${_EXT_PATH}/openssl/windows/x64/bin/openssl.exe" COPYONLY)
endif()