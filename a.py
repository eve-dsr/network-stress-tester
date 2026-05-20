from difflib import get_close_matches

# Sample actual usernames in system
real_usernames = [
    "Sandeep Akula",
    "Ravi Teja",
    "Sandip Akula",
    "Sandeep Kumar",
    "Akula Sandeep"
]

# Fuzzed variations to test
fuzzed_variants = [
    "SanDeep Akula",
    "Sandeeep Akula",
    "Sandeep AkulA",
    "Sandeep Akulaa",
    "Sandeep Akula",
    "Sandeep Kumar",
    "Akula Sandeep"
]

def match_names(fuzzed, real, threshold=0.8):
    print("🔍 Matching fuzzed names to real usernames:\n")
    for fuzzed_name in fuzzed:
        matches = get_close_matches(fuzzed_name, real, n=1, cutoff=threshold)
        if matches:
            print(f"✅ MATCH: {fuzzed_name} ≈ {matches[0]}")
        else:
            print(f"❌ NO MATCH: {fuzzed_name}")

# Run matching
match_names(fuzzed_variants, real_usernames)
