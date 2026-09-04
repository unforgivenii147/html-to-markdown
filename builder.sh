# Create a minimal Cargo.lock
cargo generate-lockfile --target armv7-linux-androideabi

# Remove Windows entries
sed -i '/windows-/d' Cargo.lock
sed -i '/winapi-/d' Cargo.lock

# Build frozen (uses only existing deps)
maturin build --frozen --target armv7-linux-androideabi