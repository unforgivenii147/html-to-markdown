# Build with explicit target
CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_LINKER=cc \
maturin build --target armv7-linux-androideabi --no-default-features

# Or for Python wheel
maturin build --target armv7-linux-androideabi \
  --no-default-features \
  --interpreter python3.12