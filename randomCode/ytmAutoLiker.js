/*
Found at https://www.reddit.com/r/YoutubeMusic/comments/eiaqo6/how_to_like_all_songs_in_a_playlist/, by user Bepo_bear
Translated to english and upped maxSameHeight. Need to keep window open to fully work.
*/

async function likeAllSongs() {
    const scrollStep = 500;
    const delayBetweenActions = 700;

    let lastHeight = 0;
    let sameHeightCount = 0;
    const maxSameHeight = 10000000000;

    let likedCount = 0;

    while (true) {
        window.scrollBy(0, scrollStep);
        await new Promise(r => setTimeout(r, 1200));

        const songs = document.querySelectorAll("ytmusic-responsive-list-item-renderer");

        for (let i = 0; i < songs.length; i++) {
            const song = songs[i];
            song.dispatchEvent(new MouseEvent('mouseover', { bubbles: true }));

            // Song info
            const title = song.querySelector("yt-formatted-string.title")?.innerText || "Unknown";
            const artist = song.querySelector("yt-formatted-string.subtitle")?.innerText || "Unknown";

            // 🎯 Like button identified by aria-label "Like"
            const likeButton = song.querySelector("button[aria-label='Like']");
            if (!likeButton) {
                console.log(`⚠️ No like button found for "${title}"`);
                continue;
            }

            // Check if not already liked
            if (likeButton.getAttribute("aria-pressed") === "false") {
                likeButton.click();
                likedCount++;
                console.log(`✅ Liked: "${title}" by ${artist}`);
                await new Promise(r => setTimeout(r, delayBetweenActions));
            }
        }

        // Check if end of scroll reached
        const newHeight = document.body.scrollHeight;
        if (newHeight === lastHeight) {
            sameHeightCount++;
            if (sameHeightCount >= maxSameHeight) break;
        } else {
            sameHeightCount = 0;
        }
        lastHeight = newHeight;
    }

    console.log(`------------ COMPLETE | Total of ${likedCount} songs liked ------------`);
}

likeAllSongs();