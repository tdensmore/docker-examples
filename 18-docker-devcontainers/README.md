📦 Devcontainer Demo Kit for Sales & CS
The Story You're Telling
"Traditional developer onboarding takes days or weeks. With devcontainers, it takes 2 minutes."

File Structure (just 3 files!)
rust-demo/
├── .devcontainer/
│   └── devcontainer.json
├── src/
│   └── main.rs
└── Cargo.toml
Demo Script with Value Callouts

# Devcontainer Value Demo Script
Setup (2 minutes)
TALKING POINT #1: Zero Manual Installation
"Notice the developer doesn't install Rust, doesn't configure tools, doesn't ask 'what version?' They just open the project."
What happens:

Developer opens folder in VS Code
VS Code detects .devcontainer/devcontainer.json
Prompt: "Reopen in Container?" → Click yes
Container builds automatically (first time ~1-2 min)
Developer is ready to code

Customer pain this solves:

❌ "It works on my machine" issues
❌ Multi-day onboarding for new hires
❌ Version conflicts across teams
❌ Environment drift over time


The Demo Files
File 1: .devcontainer/devcontainer.json
json{
  "name": "Rust Development",
  "image": "mcr.microsoft.com/devcontainers/rust:1-bookworm",
  
  "customizations": {
    "vscode": {
      "extensions": [
        "rust-lang.rust-analyzer"
      ]
    }
  },

  "postCreateCommand": "rustc --version && cargo --version"
}
TALKING POINT #2: Everything is Code
"This 10-line file replaces a 5-page setup document. Every developer gets the exact same environment."
What each line means (simple version):

name: What shows in VS Code
image: Pre-built Microsoft container with Rust installed
customizations: Auto-installs VS Code extensions
postCreateCommand: Runs on first setup (shows versions)

Business value:

✅ New developer productive in 2 minutes, not 2 days
✅ Zero documentation to maintain
✅ Perfect consistency across 10 or 10,000 developers


File 2: src/main.rs
rustfn main() {
    println!("Hello from inside a devcontainer!");
    println!("This code runs in an isolated, reproducible environment");
}

#[cfg(test)]
mod tests {
    #[test]
    fn test_always_passes() {
        assert_eq!(2 + 2, 4);
    }
}
TALKING POINT #3: Immediate Value
"Let's prove it works. We'll compile and run this code without installing anything."

File 3: Cargo.toml
toml[package]
name = "devcontainer-demo"
version = "0.1.0"
edition = "2021"
TALKING POINT #4: Project Definition
"This defines the project. In a real app, this would list hundreds of dependencies - all automatically installed in the container."

Live Demo Steps
Step 1: Build and Run
bash# In VS Code terminal (inside container):
cargo run
```

**Expected output:**
```
   Compiling devcontainer-demo v0.1.0
    Finished dev [unoptimized + debuginfo] target(s) in 0.50s
     Running `target/debug/devcontainer-demo`
Hello from inside a devcontainer!
This code runs in an isolated, reproducible environment
PAUSE HERE - Key Message:
"This developer just compiled Rust code without installing Rust. That's the power of devcontainers."

Step 2: Run Tests
bashcargo test
```

**Expected output:**
```
   Compiling devcontainer-demo v0.1.0
    Finished test [unoptimized + debuginfo] target(s) in 0.52s
     Running unittests src/main.rs
running 1 test
test tests::test_always_passes ... ok
TALKING POINT #5: Quality from Day One
"Even in this simple demo, we have automated testing. In production, this ensures every developer runs the same tests with the same tools."

The ROI Conversation
Traditional Developer Onboarding

Day 1-2: Install language runtimes, IDEs, tools
Day 3: Debug version mismatches
Day 4: Finally run "hello world"
Week 2: Still finding setup issues
Cost: 2-5 days per developer × $500/day = $1,000-2,500 per hire

With Devcontainers

Minute 1: Open project
Minute 2: Click "Reopen in Container"
Minute 3: Start coding
Cost: 3 minutes

Scaling impact:

100 developers onboarded per year
3 days saved per developer
300 days = ~$150,000 in productivity recovered


Common Questions & Answers
Q: "What if they need a different version of Rust?"
A: Change one line in the config. Everyone gets the update next time they open the project.
Q: "Does this work for other languages?"
A: Yes - Python, Node, Java, Go, .NET, PHP. Microsoft maintains 30+ pre-built images.
Q: "What about our legacy apps?"
A: You can containerize existing apps gradually. Start with new projects, migrate old ones over time.
Q: "Do developers need Docker expertise?"
A: No. They just click "Reopen in Container." Docker handles everything behind the scenes.
Q: "What's the enterprise value?"
A:

Faster onboarding (days → minutes)
Reduced "works on my machine" bugs
Easier compliance (everyone uses approved, scanned images)
Better security (isolated environments)
Lower infrastructure costs (consistent resource usage)


Next Steps for Prospects

Pilot Program: Start with 1 team, 1 project
Measure: Track onboarding time before/after
Expand: Roll out successful patterns
Integrate: Connect with Docker Business security features


Key Takeaways for Customers
✅ Speed: 2-minute onboarding vs 2-day setup
✅ Consistency: Same environment for all developers
✅ Compliance: Centrally managed, approved images
✅ Cost Savings: Reduced support tickets, faster productivity
✅ Developer Happiness: "It just works"




