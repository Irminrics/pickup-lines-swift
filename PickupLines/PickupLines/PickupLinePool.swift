//
//  PickupLinePool.swift
//  PickupLines
//
//  Created by Jun Kang on 2/8/21.
//

import GameKit

struct PickupLinePool {
    let pLines = [
        "I hope you know CPR, because you just took my breath away!",
        "So, aside from taking my breath away, what do you do for a living?",
        "I ought to complain to Spotify for you not being named this week’s hottest single.",
        "Are you a parking ticket? ‘Cause you’ve got ‘fine’ written all over you.",
        "Your eyes are like the ocean; I could swim in them all day.",
        "When I look in your eyes, I see a very kind soul.",
        "If you were a vegetable, you’d be a ‘cute-cumber.’",
        "Do you happen to have a Band-Aid? ‘Cause I scraped my knees falling for you.",
        "I never believed in love at first sight, but that was before I saw you.",
        "I didn’t know what I wanted in a woman until I saw you.",
        "I was wondering if you could tell me: If you’re here, who’s running Heaven?",
        "You’re like a fine wine. The more of you I drink in, the better I feel.",
        "You’ve got a lot of beautiful curves, but your smile is absolutely my favorite.",
        "Do you have a map? I just got lost in your eyes.",
        "Are you a magician? It’s the strangest thing, but every time I look at you, everyone else disappears.",
        "I think there’s something wrong with my phone. Could you try calling it to see if it works?",
        "I would never play hide and seek with you because someone like you is impossible to find.",
        "You know what you would look really beautiful in? My arms.",
        "I’d like to take you to the movies, but they don’t let you bring in your own snacks.",
        "Are you an electrician? Because you’re definitely lighting up my day/night!",
        "I’ve heard it said that kissing is the ‘language of love.’ Would you care to have a conversation with me about it sometime?",
        "I believe in following my dreams. Can I have your Instagram?",
        "If you were a song, you’d be the best track on the album.",
        "If you were a Transformer, you’d be ‘Optimus Fine.’",
        "Is your name Google? Because you have everything I’m searching for.",
        "Do you ever get tired from running through my thoughts all night?",
        "Your hand looks heavy—can I hold it for you?",
        "Do you know what my shirt is made of? Boyfriend material.",
        "Are you a time traveler? Because I absolutely see you in my future.",
        "If I had a nickel for every time I saw someone as beautiful as you, I’d still only have five cents.",
        "I’m not photographer, but I can definitely picture us together.",
        "Do you believe in love at first sight, or should I try walking by again?",
        "If I were a cat, I’d spend all nine of my lives with you.",
        "Kiss me if I’m wrong but, dinosaurs still exist, right?",
        "I’m not currently an organ donor, but I’d be happy to give you my heart.",
        "If you let me borrow a kiss, I promise I’ll give it right back.",
        "Are you any good at boxing? Because you look like a knockout.",
        "Do you have a name, or can I just call you ‘mine?’",
        "Hey, do you mind if we take a picture together? I just want to show my mom what my next girlfriend looks like.",
        "I wish I’d paid more attention to science in high school, because you and I’ve got chemistry and I want to know all about it.",
        "If I could rearrange the alphabet, I’d put ‘U’ and ‘I’ together.",
        "Are you a parking ticket? Because you’ve got FINE written all over you.",
        "Well, here I am. What are your other two wishes?",
        "If you were a chicken, you’d be impeccable.",
        "Did your license get suspended for driving all these guys crazy?",
        "Did you just come out of the oven? Because you’re hot.",
        "Are you Australian? Because you meet all of my koalafications.",
        "Do you like Star Wars? Cause Yoda only one for me.",
        "You're so sweet, you could put Hershey's out of business!",
        "I'm in the mood for pizza. A pizza you, that is!",
        "Are you a loan? 'Cause you've got my interest!",
        "Is there an airport nearby, or was that just my heart taking off?",
        "If you were a burger at McDonald's, you'd be the McGorgeous.",
        "Are you a camera? Because every time I look at you, I smile.",
        "I'm good at algebra; I can replace your X and you wouldn't need to figure out Y.",
        "I'm really glad I just bought life insurance, because when I saw you, my heart stopped.",
        "If I had to rate you from 1 to 10, I'd give you a 9, because I'm the 1 you're missing.",
        "Are your parents bakers? Because you're a cutie pie!",
        "Your eyes are like IKEA. I'm totally lost in them.",
        "I wasn't always religious. But I am now, because you're the answer to all my prayers.",
        "Is your name Ariel? Cause we Mermaid for each other.",
        "I want our love to be like the number Pi: irrational and never-ending.",
        "We’re not socks, but I think we’d make a great pair.",
        "My love for you is like diarrhea, I just can’t hold it in.",
        "They say Disney is the happiest place on earth. Well apparently, no one has ever been standing next to you.",
        "Life without you is like a broken pencil… pointless.",
        "Baby, if you were words on a page, you’d be fine print.",
        "Are you a keyboard? Because you’re just my type."
    ]
    
    func randomPickupLine() -> String {
        let index = GKRandomSource.sharedRandom().nextInt(upperBound: pLines.count)
        return pLines[index]
    }
}
