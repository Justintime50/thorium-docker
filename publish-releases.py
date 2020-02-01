from github import Github

G = Github("") # Your GitHub token
repo = G.get_repo("thorium-sim/thorium")
releases = repo.get_releases()
for release in releases:
    print(release)
