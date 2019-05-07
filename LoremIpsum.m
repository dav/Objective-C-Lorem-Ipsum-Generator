//
//  LoremIpsum.h
//
//  Created by dav on 12/24/10.
//  Public domain where appropriate; free for everyone, for all usages, elsewhere.
//

#import "LoremIpsum.h"

static NSArray *_words;
static NSArray *_quotes;

@implementation LoremIpsum

+ (void) initialize
{
    if (_quotes == nil)
    {
        _quotes = [[@"Change your thoughts and you change your world. Norman Vincent Peale |"\
                   @"Difficult and meaningful will always bring more satisfaction than easy and meaningless. Maxime Lagace |"\
                   @"Life is too important to be taken seriously. Oscar Wilde |"\
                   @"life quotes can only understood backwards must lived forwards soren kierkegaard wisdom|"\
                   @"Life can only be understood backwards; but it must be lived forwards. Soren Kierkegaard |"\
                   @"life quotes always seem impossible until done nelson mandela wisdom|"\
                   @"It always seems impossible until it's done. Nelson Mandela |"\
                   @"Keep your eyes on the stars and your feet on the ground. Theodore Roosevelt |"\
                   @"It's better to be a lion for a day than a sheep all your life. Elizabeth Kenny |"\
                   @"Life is a question and how we live it is our answer. Gary Keller |"\
                   @"Those who realize their folly are not true fools. Zhuangzi |"\
                   @"Keep looking up… that's the secret of life. Snoopy |"\
                   @"You are not a drop in the ocean. You are the entire ocean, in a drop. Rumi, "\
                   @"My life is my message. Mahatma Gandhi |"\
                   @"Not how long, but how well you have lived is the main thing. Seneca|"\
                   @"I love those who can smile in trouble. Leonardo da Vinci|"\
                   @"Be happy for this moment. This moment is your life. Omar Khayyam|"\
                   @"Life is what happens when you're busy making other plans. John Lennon|"\
                   @"Very little is needed to make a happy life; it is all within yourself, in your way of thinking. Marcus Aurelius|"\
                   @"It is better to be hated for what you are than to be loved for what you are not. Andre Gide|"\
                   @"Dost thou love life? Then do not squander time, for that is the stuff life is made of. Benjamin Franklin|"\
                   @"Life is like playing a violin in public and learning the instrument as one goes on. Samuel Butler|"\
                   @"In the end, it's not the years in your life that count. It's the life in your years. Abraham Lincoln|"\
                   @"You've gotta dance like there's nobody watching. William W. Purkey |"\
                   @"Everything in the universe is within you. Ask all from yourself. Rumi, "\
                   @"Believe that life is worth living and your belief will help create the fact. William James|"\
                   @"Do not take life too seriously. You will never get out of it alive. Elbert Hubbard|"\
                   @"Do stuff. Be clenched, curious. Not waiting for inspiration's shove or society's kiss on your forehead. Pay attention. It's all about paying attention. Attention is vitality. It connects you with others. It makes you eager. Stay eager. Susan Sontag|"\
                   @"The heart, like the stomach, wants a varied diet. Gustave Flaubert|"\
                   @"Your goal in life is to find out the people who need you the most, to find out the business that needs you the most, to find the project and the art that needs you the most. There is something out there just for you. Naval Ravikant|"\
                   @"Sing the song that only you can sing, write the book that only you can write, build the product that only you can build… live the life that only you can live. Naval Ravikant|"\
                   @"I tell you, in this world being a little crazy helps to keep you sane. Zsa Zsa Gabor|"\
                   @"We know what we are, but know not what we may be. William Shakespeare|"\
                   @"Lighten up, just enjoy life, smile more, laugh more, and don't get so worked up about things. Kenneth Branagh|"\
                   @"The trick in life is learning how to deal with it. Helen Mirren|"\
                   @"Time means a lot to me because, you see, I, too, am also a learner and am often lost in the joy of forever developing and simplifying. If you love life, don't waste time, for time is what life is made up of. Bruce Lee|"\
                   @"Get busy living or get busy dying. Stephen King |"\
                   @"Don't gain the world and lose your soul, wisdom is better than silver or gold. Bob Marley|"\
                   @"I'm the one that's got to die when it's time for me to die, so let me live my life the way I want to. Jimi Hendrix|"\
                   @"To live is the rarest thing in the world. Most people exist, that is all. Oscar Wilde|"\
                   @"Anyone who lives within their means suffers from a lack of imagination. Oscar Wilde|"\
                   @"Don't cry because it's over, smile because it happened. Ludwig Jacobowski (This is one of my favorite life quote. Leave a reply here and let me know what's yours!)|"\
                   @"Life is either a daring adventure or nothing at all. Helen Keller |"\
                   @"Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it. Rumi, "\
                   @"Go confidently in the direction of your dreams! Live the life you've imagined. Henry David Thoreau|"\
                   @"Tis better to have loved and lost than never to have loved at all. St. Augustine|"\
                   @"You only live once, but if you do it right, once is enough. Mae West|"\
                   @"The mind is everything. What you think you become. Buddha|"\
                   @"The journey of a thousand miles begins with one step. Lao Tzu|"\
                   @"The unexamined life is not worth living. Socrates|"\
                   @"Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma, which is living with the results of other people's thinking. Don't let the noise of others' opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition. Steve Jobs|"\
                   @"You must be the change you wish to see in the world. Mahatma Gandhi|"\
                   @"The best way out is always through. Robert Frost|"\
                   @"Success is how high you bounce when you hit bottom. George S. Patton|"\
                   @"Our life is frittered away by detail. Simplify, simplify. Henry David Thoreau |"\
                   @"Life isn't about finding yourself. Life is about creating yourself. George Bernard Shaw|"\
                   @"Life must be lived and curiosity kept alive. One must never, for whatever reason, turn his back on life. Eleanor Roosevelt|"\
                   @"Good friends, good books, and a sleepy conscience: this is the ideal life. Mark Twain|"\
                   @"Life is really simple, but we insist on making it complicated. Confucius|"\
                   @"If you want to live a happy life, tie it to a goal, not to people or things. Albert Einstein|"\
                   @"Look deep into nature, and then you will understand everything better. Albert Einstein|"\
                   @"Never let the fear of striking out keep you from playing the game. Babe Ruth|"\
                   @"Love the life you live. Live the life you love. Bob Marley |"\
                   @"Keep calm and carry on. Winston Churchill|"\
                   @"Love all, trust a few, do wrong to none. William Shakespeare|"\
                   @"Life is ours to be spent, not to be saved. D. H. Lawrence|"\
                   @"Life is short, death is forever. Chuck Palahniuk|"\
                   @"In three words I can sum up everything I've learned about life: It goes on. Robert Frost |"\
                   @"Life is short but it is wide. This too shall pass. Rebecca Wells|"\
                   @"The greatest pleasure of life is love. Euripides|"\
                   @"Fortune and love favor the brave. Ovid|"\
                   @"Life can be simple and beautiful. Focus on the good things. Maxime Lagace|"\
                   @"Life is a long lesson in humility. James M. Barrie|"\
                   @"It's better to dance than to march through life. Yoko Ono|"\
                   @"We are who we choose to be. Green Goblin|"\
                   @"I'm always doing things I can't do. That's how I get to do them. Pablo Picasso |"\
                   @"Life is short, and it is up to you to make it sweet. Sarah Louise Delany|"\
                   @"Relentlessly prune bullshit, don't wait to do things that matter, and savor the time you have. That's what you do when life is short. Paul Graham|"\
                   @"No one can compete with you on being you. Most of life is a search for who and what needs you the most. Naval Ravikant|"\
                   @"Play iterated games. All the returns in life, whether in wealth, relationships, or knowledge, come from compound interest. Naval Ravikant|"\
                   @"The woman who follows the crowd will usually go no further than the crowd. The woman who walks alone is likely to find herself in places no one has been before. Albert Einstein|"\
                   @"To do the useful thing, to say the courageous thing, to contemplate the beautiful thing: that is enough for one man's life. T.S. Eliot|"\
                   @"The purpose of life is to believe, to hope, and to strive. Indira Gandhi|"\
                   @"I alone cannot change the world, but I can cast a stone across the water to create many ripples. Mother Teresa|"\
                   @"Be willing to sacrifice what you think you have today for the life that you want tomorrow. Neil Strauss|"\
                   @"The only impossible journey is the one you never begin. Tony Robbins|"\
                   @"Your best life will not be found in comfort. It will be found in fighting for what you believe in. Maxime Lagace|"\
                   @"The one thing that you have that nobody else has is you. Your voice, your mind, your story, your vision. So write and draw and build and play and dance and live as only you can. Neil Gaiman|"\
                   @"My mission in life is not merely to survive, but to thrive; and to do so with some passion, some compassion, some humor, and some style. Maya Angelou|"\
                   @"Doing is a quantum leap from imagining. Barbara Sher|"\
                   @"Life has no meaning unless one lives it with a will, at least to the limit of one's will. Paul Gauguin|"\
                   @"Be so good they can't ignore you. Steve Martin |"\
                   @"If you don't like something change it; if you can't change it, change the way you think about it. Mary Engelbreit|"\
                   @"The greatest discovery of any generation is that a human being can alter his life by altering his attitude. William James|"\
                   @"All our dreams can come true if we have the courage to pursue them. Walt Disney|"\
                   @"We are all in the gutter, but some of us are looking at the stars. Oscar Wilde|"\
                   @"If you say you can or you can't you are right either way. Henry Ford|"\
                   @"Perpetual optimism is a force multiplier. Colin Powell|"\
                   @"I am thankful to all who said no to me. It is because of them that I'm doing it myself. Albert Einstein|"\
                   @"The dreamers are the saviors of the world. James Allen |"\
                   @"Everything has its beauty, but not everyone see its. Confucius|"\
                   @"Try to enjoy the great festival of life with other men! Epictetus|"\
                   @"Remember: the more you expect things to be a certain way, the more disappointed you'll be. Accept life as it is. You'll be free. Maxime Lagace|"\
                   @"In the midst of winter, I found there was within me an invincible summer. Albert Camus|"\
                   @"When you arise in the morning think of what a precious privilege it is to be alive, to breathe, to think, to enjoy, to love. Marcus Aurelius|"\
                   @"Because of your smile, you make life more beautiful. Thich Nhat Hanh|"\
                   @"Life always waits for some crisis to occur before revealing itself at its most brilliant. Paulo Coelho (Eleven Minutes)|"\
                   @"The aim of life is to live, and to live means to be aware, joyously, drunkenly, serenely, divinely aware. Henry Miller|"\
                   @"Every second you have on this planet is very precious and it's your responsibility that you're happy. Naval Ravikant|"\
                   @"Three things in life - your health, your mission, and the people you love. That's it. Naval Ravikant|"\
                   @"There is no education like adversity. Benjamin Disraeli|"\
                   @"I will go anywhere as long as it's forward. David Livingston|"\
                   @"You're only here for a short visit. Don't hurry, don't worry. And be sure to smell the flowers along the way. Walter Hagen|"\
                   @"Find ecstasy in life; the mere sense of living is joy enough. Emily Dickinson|"\
                   @"You have just one life to live. It is yours. Own it, claim it, live it, do the best you can with it. Hillary Clinton|"\
                   @"Most great people have attained their greatest success one step beyond their greatest failure. Napoleon Hill|"\
                   @"In the middle of a difficulty lies opportunity. Albert Einstein|"\
                   @"Life doesn't require that we be the best, only that we try our best. H. Jackson Brown Jr.|"\
                   @"May you live all the days of your life. Jonathan Swift|"\
                   @"Happiness is the absence of the striving for happiness. Zhuangzi|"\
                   @"Defeat is simply a signal to press onward. Helen Keller|"\
                   @"I've failed over and over and over again in my life. And that is why I succeed. Michael Jordan|"\
                   @"The first step is you have to say that you can. Will Smith|"\
                   @"Discouragement and failure are two of the surest stepping stones to success. Dale Carnegie|"\
                   @"The purpose of our lives is to be happy. Dalai Lama|"\
                   @"Once you choose hope, anything's possible. Christopher Reeve|"\
                   @"Keep smiling, because life is a beautiful thing and there's so much to smile about. Marilyn Monroe|"\
                   @"There is only one happiness in life - to love and to be loved. George Sand|"\
                   @"Kid, you'll move mountains! Today is your day! Your mountain is waiting, so get on your way! Dr. Seuss|"\
                   @"Rise above the storm and you will find the sunshine. Mario Fernandez|"\
                   @"Some people never go crazy. What truly horrible lives they must lead. Charles Bukowski |"\
                   @"Those who believe in telekinetics, raise my hand. Kurt Vonnegut|"\
                   @"Two things are infinite: the universe and human stupidity; and I'm not sure about the universe. Albert Einstein|"\
                   @"All you need is love. But a little chocolate now and then doesn't hurt. Charles Schulz|"\
                   @"Accept who you are. Unless you're a serial killer. Ellen DeGeneres|"\
                   @"All generalizations are false, including this one. Mark Twain|"\
                   @"When angry, count to four; when very angry, swear. Mark Twain|"\
                   @"When life gives you lemons, squirt someone in the eye. Cathy Guisewite|"\
                   @"Life is pain. Anyone who says otherwise is selling something. William Goldman|"\
                   @"A woman's mind is cleaner than a man's: She changes it more often. Oliver Herford|"\
                   @"I can resist everything except temptation. Oscar Wilde|"\
                   @"The planet is fine. The people are fucked. George Carlin |"\
                   @"The reason I talk to myself is because I'm the only one whose answers I accept. George Carlin|"\
                   @"I love deadlines, I like the whooshing sound they make as they fly by. Douglas Adams|"\
                   @"Never trust people who smile constantly. They're either selling something or not very bright. Laurell K. Hamilton|"\
                   @"Women and cats will do as they please, and men and dogs should relax and get used to the idea. Robert A Heinlein|"\
                   @"If you're too open-minded; your brains will fall out. Lawrence Ferlinghetti|"\
                   @"Behind every great man is a woman rolling her eyes. Jim Carrey|"\
                   @"What a kid I got, I told him about the birds and the bees and he told me about the butcher and my wife. Rodney Dangerfield|"\
                   @"Life is so short. I would rather sing one song than interpret the thousand. Jack London |"\
                   @"Life is made of ever so many partings welded together. Charles Dickens|"\
                   @"The flavor of life is on the edge. Naval Ravikant|"\
                   @"We are evolved to search for meaning but ultimately life has none. Naval Ravikant|"\
                   @"This is your life and it's ending one minute at a time. Tyler Durden (Fight Club)|"\
                   @"The more unintelligent a man is, the less mysterious existence seems to him. Arthur Schopenhauer|"\
                   @"The shortness of life, so often lamented, may be the best thing about it. Arthur Schopenhauer|"\
                   @"In the book of life, the answers aren't in the back. Charlie Brown|"\
                   @"What gives meaning are challenges. A beautiful life is a meaningful. Say yes to challenges. Maxime Lagace|"\
                   @"Nobody can predict the future; the idea is to have a firm grasp of the present. Peter F. Drucker|"\
                   @"The first half of life is devoted to forming a healthy ego, the second half is going inward and letting go of it. Carl Jung|"\
                   @"We're not meant to consume infinite news, porn and food. We live in an era of too much abundance. This is the modern struggle. There is so much of an abundance of cheap, fake, instant dopamine and meaning. How do you motivate yourself to do the real thing any more? Naval Ravikant|"\
                   @"We no longer live life. We consume it. Vicki Robin (Your Money Or Your Life)|"\
                   @"People say that what we're all seeking is a meaning for life. I don't think that's what we're really seeking. I think that what we're seeking is an experience of being alive. Joseph Campbell|"\
                   @"Happiness is not the surplus of pleasant over unpleasant moments. Rather happiness consists in seeing one's life in its entirety as meaningful and worthwhile. Yuval Noah Harari|"\
                   @"As Nietzsche put it, if you have a WHY to live, you can bear almost any “HOW”. A meaningful life can be extremely satisfying even in the midst of hardship whereas a meaningless life is a terrible ordeal no matter how comfortable it is. Yuval Noah Harari|"\
                   @"The first to apologize is the bravest. The first to forgive is the strongest. The first to forget is the happiest. Unknown|"\
                   @"Life is a storm that will test you unceasingly. Don't wait for calm waters that may not arrive. Derive purpose from resilience. Learn to sail the raging sea. Unknown|"\
                   @"Death is not the greatest loss in life. The greatest loss is what dies inside us while we live. Norman Cousins|"\
                   @"Sometimes the questions are complicated and the answers are simple. Dr. Seuss|"\
                   @"If my life is going to mean anything, I have to live it myself. Rick Riordan|"\
                   @"Life is essentially an endless series of problems. The solution to one problem is merely the creation of the next one. Don't hope for a life without problems. There's no such thing. Instead, hope for a life full of good problems. Mark Manson|"\
                   @"There are two great days in a person's life - the day we are born and the day we discover why. William Barclay|"\
                   @"Life does not owe you anything because life has already given you everything. Ralph Marston|"\
                   @"The day you stop racing, is the day you win the race. Bob Marley |"\
                   @"Maybe that's what life is… a wink of the eye and winking stars. Jack Kerouac|"\
                   @"The stupid neither forgive nor forget; the naïve forgive and forget; the wise forgive but do not forget. Thomas Szasz|"\
                   @"What do you want a meaning for? Life is a desire, not a meaning. Charlie Chaplin|"\
                   @"Life's too mysterious to take too serious. Mary Engelbreit |"\
                   @"Nothing you do is going to matter that much in the long run. Don't take yourself so seriously. Naval Ravikant|"\
                   @"Most of life is about searching, it's not about doing. People spend too much time doing and not thinking about what they should be doing. Naval Ravikant|"\
                   @"Courage is the most important of all the virtues because without courage, you can't practice any other virtue consistently. Maya Angelou|"\
                   @"A little foolishness, enough to enjoy life, and a little wisdom to avoid the errors, that will do. Osho|"\
                   @"The chief danger in life is that you may take too many precautions. Alfred Adler|"\
                   @"When it hurts - observe. Life is trying to teach you something. Anita Krizzan|"\
                   @"Too many people think life will be easy. Keep it mind that it will not and you'll find peace of mind. Maxime Lagace|"\
                   @"You're never wrong if you love and help people. Maxime Lagace|"\
                   @"If there's a single lesson that life teaches us, it's that wishing doesn't make it so. Lev Grossman|"\
                   @"We are addicted to our thoughts. We cannot change anything if we cannot change our thinking. Santosh Kalwar|"\
                   @"In every success story, you will find someone who has made a courageous decision. Peter F. Drucker|"\
                   @"Life is to enjoyed, not endured. Gordon Hinckley|"\
                   @"Do what is right, not what is easy nor what is popular. Roy T. Bennett|"\
                   @"Life moves pretty fast. If you don't stop and look around once in a while you could miss it. Ferris Bueller|"\
                   @"A fear-oriented man is always calculating, planning, arranging, safeguarding. His whole life is lost in this way. Osho|"\
                   @"See: it's a never-ending upward spiral. And if you think at any point you're allowed to stop climbing, I'm afraid you're missing the point. Because the joy is in the climb itself. Mark Manson|"\
                   @"Our crisis is no longer material; it's existential, it's spiritual. We have so much fucking stuff and so many opportunities that we don't even know what to give a fuck about anymore. Mark Manson|"\
                   @"If we admit that human life can be ruled by reason, then all possibility of life is destroyed. Christopher McCandless (Into The Wild movie)|"\
                   @"When you want something in life, you just gotta reach out and grab it. Christopher McCandless (Into The Wild movie)|"\
                   @"Instead of worrying about what you cannot control, shift your energy to what you can create. Roy T. Bennett|"\
                   @"Blessed is he who expects nothing, for he shall never be disappointed. Alexander Pope|"\
                   @"People tend to complicate their own lives, as if living weren't already complicated enough. Carlos Ruiz Zafón|"\
                   @"Good judgment comes from experience, and experience comes from bad judgment. Rita Mae Brown|"\
                   @"Fantasy is a necessary ingredient in living, it's a way of looking at life through the wrong end of a telescope. Which is what I do, and that enables you to laugh at life's realities. Dr. Seuss|"\
                   @"Care about what other people think and you will always be their prisoner. Lao Tzu|"\
                   @"The hardest thing to learn in life is which bridge to cross and which bridge to burn. David Russell|"\
                   @"You get in life what you have the courage to ask for. Oprah Winfrey |"\
                   @"Life is a series of natural and spontaneous changes. Don't resist them - that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like. Lao Tzu|"\
                   @"Love is the goal, life is the journey. Osho |"\
                   @"I think being in love with life is a key to eternal youth. Doug Hutchison|"\
                   @"Love takes off masks that we fear we cannot live without and know we cannot live within. James Baldwin|"\
                   @"Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world. Lucille Ball|"\
                   @"The most important thing in life is to learn how to give out love, and to let it come in. Morrie Schwartz|"\
                   @"Where there is love there is life. Mahatma Gandhi|"\
                   @"If I know what love is, it is because of you. Herman Hesse|"\
                   @"You either live a life of love, or a life of fear. The life of fear is the easiest one because you don't risk anything. You simply protect. The toughest one is the life of love because you risk more. You give all you've got. The choice is yours. Maxime Lagace|"\
                   @"There is love and respect for others. There is love and respect for yourself. Start with the latter. Maxime Lagace|"\
                   @"In this life we cannot do great things. We can only do small things with great love. Mother Teresa|"\
                   @"It is not where we breathe, but where we Love, that we live. Soren Kierkegaard|"\
                   @"I love you not because of who you are, but because of who I am when I am with you. Roy Croft|"\
                   @"A drop of love can bring an ocean of tears. Jewish Proverb|"\
                   @"We are shaped and fashioned by what we love. Johann Wolfgang von Goethe|"\
                   @"Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it. Rumi|"\
                   @"When we are in love we seem to ourselves quite different from what we were before. Blaise Pascal|"\
                   @"The way to love anything is to realize that it may be lost. Gilbert K. Chesterton|"\
                   @"Don't brood. Get on with living and loving. You don't have forever. Leo Buscaglia|"\
                   @"Love is not only something you feel, it is something you do. David Wilkerson|"\
                   @"If you would be loved, love, and be loveable. Benjamin Franklin|"\
                   @"Love is of all passions the strongest, for it attacks simultaneously the head, the heart and the senses. Lao Tzu|"\
                   @"Being deeply loved by someone gives you strength, while loving someone deeply gives you courage. Lao Tzu|"\
                   @"Love is a better teacher than duty. Albert Einstein|"\
                   @"The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart. Helen Keller|"\
                   @"Keep love in your heart. A life without it is like a sunless garden when the flowers are dead. Oscar Wilde|"\
                   @"The only thing we never get enough of is love; and the only thing we never give enough of is love. Henry Miller|"\
                   @"Loving people live in a loving world. Hostile people live in a hostile world. Same world. Wayne Dyer|"\
                   @"You know you're in love when you don't want to fall asleep because reality is finally better than your dreams. Dr. Seuss|"\
                   @"The art of love is largely the art of persistence. Albert Ellis|"\
                   @"Love does not dominate; it cultivates. Johann Wolfgang von Goethe|"\
                   @"We are most alive when we're in love. John Updike|"\
                   @"The giving of love is an education in itself. Eleanor Roosevelt|"\
                   @"The greatest gift of life is friendship, and I have received it. Hubert H. Humphrey |"\
                   @"A friend is someone who knows all about you and still loves you. Elbert Hubbard|"\
                   @"You't don't need twenty friends to say you have friends. Like most things in life, it's quality over quantity. The less you have, the more you can take care of them. Maxime Lagace|"\
                   @"The best friend you'll find in your life is the friend that always come back to you, no matter what happened or how long it has been. Maxime Lagace|"\
                   @"A brother may not be a friend, but a friend will always be a brother. Benjamin Franklin|"\
                   @"Friendship is born at the moment when one man says to another “What! You too? I thought that no one but myself…”. C.S. Lewis|"\
                   @"Friendship is unnecessary, like philosophy, like art… It has no survival value; rather it is one of those things which give value to survival. C.S. Lewis|"\
                   @"It is more fun to talk with someone who doesn't use long, difficult words but rather short, easy words like “What about lunch?”. A.A. Milne|"\
                   @"Only a life lived for others is a life worthwhile. Albert Einstein|"\
                   @"The capacity for friendship is God's way of apologizing for our families. Jay McInerney|"\
                   @"Silence make the real conversations between friends. Not the saying, but the never needing to say that counts. Margaret Lee Runbeck|"\
                   @"The man of knowledge must be able not only to love his enemies but also to hate his friends. Friedrich Nietzsche|"\
                   @"There is nothing I would not do for those who are really my friends. I have no notion of loving people by halves, it is not my nature. Jane Austen|"\
                   @"Happiness is only real when shared. Jon Krakauer|"\
                   @"There is nothing better than a friend, unless it is a friend with chocolate. Linda Grayson|"\
                   @"Don't walk in front of me… I may not follow. Don't walk behind me… I may not lead. Walk beside me… just be my friend. Albert Camus|"\
                   @"It is a wise father that knows his own child. William Shakespeare |"\
                   @"Family is not an important thing. It's everything. Michael J. Fox|"\
                   @"A happy family is but an earlier heaven. George Bernard Shaw|"\
                   @"If you're lucky, family members are friends, and friends are family members. Maxime Lagace|"\
                   @"Make sure they know you love them. Maxime Lagace|"\
                   @"The family is one of nature's masterpieces. George Santayana|"\
                   @"Show me a family of readers, and I will show you the people who move the world. Napoleon Bonaparte|"\
                   @"One father is more than a hundred schoolmasters. George Herbert|"\
                   @"The strength of a nation derives from the integrity of the home. Confucius|"\
                   @"Each day of our lives we make deposits in the memory banks of our children. Charles R. Swindoll|"\
                   @"In family life, love is the oil that eases friction, the cement that binds closer together, and the music that brings harmony. Friedrich Nietzsche|"\
                   @"The only rock I know that stays steady, the only institution I know that works, is the family. Lee Iacocca|"\
                   @"See also: family quotes|"\
                   @"Families are the compass that guides us. They are the inspiration to reach great heights, and our comfort when we occasionally falter. Brad Henry|"\
                   @"It is not flesh and blood but the heart which makes us fathers and sons. Johann Schiller|"\
                   @"When everything goes to hell, the people who stand by you without flinching - they are your family. Jim Butcher|"\
                   @"The most important thing a father can do for his children is to love their mother. Theodore Hesburgh|"\
                   @"Family means no one gets left behind or forgotten. David Ogden Stiers|"\
                   @"Children are a poor man's riches. English Proverb|"\
                   @"Children have more need of models than critics. Joseph Joubert|"\
                   @"Other things may change us, but we start and end with the family. Anthony Brandt|"\
                   @"In family relationships, love is really spelled T.I.M.E. Dieter F. Uchtdorf|"\
                   @"If you cannot get rid of the family skeleton, you may as well make it dance. George Bernard Shaw|"\
                   @"I have learned that to be with those I like is enough. Walt Whitman|"\
                   @"Life is trying things to see if they work. Ray Bradbury |"\
                   @"A man who dares to waste one hour of time has not discovered the value of life. Charles Darwin|"\
                   @"A simple definition of success is this: your life could serve as an example for society. Maxime Lagace|"\
                   @"The easiest definition of success is material or financial. The most beautiful definition of success is inner peace. Maxime Lagace|"\
                   @"Life is pretty simple: You do some stuff. Most fails. Some works. You do more of what works. Leonardo da Vinci|"\
                   @"Success is about creating value. Candice Carpenter|"\
                   @"The worst part of success is trying to find someone who is happy for you. Bette Midler|"\
                   @"Success is not final, failure is not fatal: it is the courage to continue that counts. Winston Churchill|"\
                   @"Life belongs to the living, and he who lives must be prepared for changes. Johann Wolfgang von Goethe|"\
                   @"See also: leadership quotes|"\
                   @"I can't give you a sure-fire formula for success, but I can give you a formula for failure: try to please everybody all the time. Herbert Bayard Swope|"\
                   @"If at first you don't succeed, try, try again. Then quit. No use being a damn fool about it. W.C. Fields|"\
                   @"Try not to become a man of success. Rather become a man of value. Albert Einstein|"\
                   @"It is better to fail in originality than to succeed in imitation. Herman Melville|"\
                   @"All you need in this life is ignorance and confidence; then success is sure. Mark Twain|"\
                   @"Good is not enough. You've got to be great. Simon Cowell|"\
                   @"Success is getting what you want, happiness is wanting what you get. W.P. Kinsella|"\
                   @"Have no fear of perfection - you'll never reach it. Salvador Dali|"\
                   @"Choose a job you love, and you will never have to work a day in your life. Confucius|"\
                   @"Success is stumbling from failure to failure with no loss of enthusiasm. Winston S. Churchill|"\
                   @"Without the rain there would be no rainbow. Gilbert Chesterton |"\
                   @"Challenges, failures, defeats and ultimately, progress, are what make your life worthwhile. Maxime Lagace|"\
                   @"Scared people want comfort and certainty so they avoid failure. People living fully seek challenges because this is where they feel alive. Maxime Lagace|"\
                   @"Sometimes life hits you in the head with a brick. Don't lose faith. Steve Jobs|"\
                   @"Cry. Forgive. Learn. Move on. Let your tears water the seeds of your future happiness. Steve Maraboli|"\
                   @"All life is an experiment. The more experiments you make the better. Ralph Waldo Emerson|"\
                   @"You cannot find peace avoiding life. Virginia Woolf|"\
                   @"Life is like riding a bicycle. To keep your balance, you must keep moving. Albert Einstein|"\
                   @"Life is just the same as learning to swim. Do not be afraid of making mistakes, for there is no other way of learning how to live! Alfred Adler|"\
                   @"Life is ten percent what happens to you and ninety percent how you respond to it. Charles Swindoll|"\
                   @"All of life is peaks and valleys. Don't let the peaks get too high and the valleys too low. John Wooden|"\
                   @"However difficult life may seem, there is always something you can do and succeed at. Stephen Hawking|"\
                   @"I enjoy life when things are happening. I don't care if it's good things or bad things. That means you're alive. Joan Rivers|"\
                   @"The truth is you don't know what is going to happen tomorrow. Life is a crazy ride, and nothing is guaranteed. Eminem|"\
                   @"If life were predictable it would cease to be life, and be without flavor. Eleanor Roosevelt|"\
                   @"Life is to entered upon with courage. Alexis de Tocqueville |"\
                   @"Life is a single player game. Naval Ravikant|"\
                   @"Life consists with wildness. The most alive is the wildest. Henry David Thoreau|"\
                   @"Life is the art of drawing sufficient conclusions from insufficient premises. Samuel Butler|"\
                   @"Life is a process. We are a process. The universe is a process. Anne Wilson Schaef|"\
                   @"Life is like music for its own sake. We are living in an eternal now, and when we listen to music we are not listening to the past, we are not listening to the future, we are listening to an expanded present. Alan Watts|"\
                   @"My life is my argument. Albert Schweitzer |"\
                   @"Life is a mixing of all kind of things: comedy and tragedy going together. Alejandro Jodorowsky|"\
                   @"Life is a process of becoming, a combination of states we have to go through. Where people fail is that they wish to elect a state and remain in it. This is a kind of death. Anais Nin|"\
                   @"Life is an ever-flowing process and somewhere on the path some unpleasant things will pop up - it might leave a scar, but then life is flowing, and like running water, when it stops it grows stale. Go bravely on, my friend, because each experience teaches us a lesson. Keep blasting because life is such that sometimes it is nice and sometimes it is not. Bruce Lee|"\
                   @"Life is too mysterious to try to map it out. I've certainly lived long enough to know it will take you places you never thought it would take you - and some of those places are kind of wonderful. Alan Ball|"\
                   @"Life is like a box of sardines and we are all looking for the key. Alan Bennett|"\
                   @"Life is a gift, given in trust - like a child. Anne Morrow Lindbergh|"\
                   @"Life is an illusion. I am held together in the nothingness by art. Anselm Kiefer|"\
                   @"Life is too short to be little. Man is never so manly as when he feels deeply, acts boldly, and expresses himself with frankness and with fervor. Benjamin Disraeli|"\
                   @"Life is beautiful because it doesn't last. Brit Marling|"\
                   @"The purpose of human life is to serve and to show compassion and the will to help others. Albert Schweitzer|"\
                   @"Reverence for life is the highest court of appeal. Albert Schweitzer|"\
                   @"The tragedy of life is what dies inside a man while he lives. Albert Schweitzer|"\
                   @"Life is wide, limitless. There is no border, no frontier. Bruce Lee |"\
                   @"Life is a lively process of becoming. Douglas MacArthur |"\
                   @"Life is like an onion: you peel it off one layer at a time, and sometimes you weep. Carl Sandburg|"\
                   @"The goal of life is living in agreement with nature. Citium Zeno|"\
                   @"The good life is a process, not a state of being. It is a direction not a destination. Carl Rogers|"\
                   @"Life is just one damned thing after another. Elbert Hubbard|"\
                   @"Life is no brief candle to me. It is a sort of splendid torch which I have got a hold of for the moment, and I want to make it burn as brightly as possible before handing it onto future generations. George Bernard Shaw|"\
                   @"My life is about ups and downs, great joys and great losses. Isabel Allende|"\
                   @"Life is not a matter of holding good cards, but sometimes, playing a poor hand well. Jack London|"\
                   @"Life is a long lesson in humility. James M. Barrie|"\
                   @"Life is short. You have to be able to laugh at our pain or we never move on. Jeff Ross|"\
                   @"Life is empty, and realizing that, we want to fill it, we are seeking - seeking ways and means, not only to fill this emptiness but also to find something that is not to be measured by man. Jiddu Krishnamurti|"\
                   @"Our whole life is solving puzzles. Erno Rubik|"\
                   @"Life is largely a matter of expectation. Homer|"\
                   @"Life is tragic but it's equally comic. John Banville |"\
                   @"Life is hard. After all, it kills you. Katharine Hepburn|"\
                   @"Life is neither good or evil, but only a place for good and evil. Marcus Aurelius|"\
                   @"The sole meaning of life is to serve humanity. Leo Tolstoy|"\
                   @"Life is a series of commas, not periods. Unknown|"\
                   @"Life is growth. If we stop growing, technically and spiritually, we are as good as dead. Morihei Ueshiba|"\
                   @"Life is really a dance if you are original, and you are meant to be original. Osho|"\
                   @"Life is not a problem. To look at it as a problem is to take a wrong step. It is a mystery to be lived, loved, experienced. Osho|"\
                   @"Life is the first gift, love is the second, and understanding the third. Marge Piercy |"\
                   @"Life is a zoo in a jungle. Peter De Vries|"\
                   @"Life is a continuous process of adjustment. Indira Gandhi|"\
                   @"Life is to be lived, not controlled, and humanity is won by continuing to play in face of certain defeat. Ralph Ellison|"\
                   @"Life isn't a matter of milestones, but of moments. Rose Kennedy|"\
                   @"The joy of life consists in the inevitable, continual triumph of new values. Wassily Kandinsky|"\
                   @"Life is a game and true love is a trophy. Rufus Wainwright|"\
                   @"Life is available only in the present moment. Thich Nhat Hanh|"\
                   @"Life is not an exact science, it is an art. Samuel Butler|"\
                   @"Life is a dream for the wise, a game for the fool, a comedy for the rich, a tragedy for the poor. Sholom Aleichem|"\
                   @"Life is fragile. We're not guaranteed a tomorrow so give it everything you've got. Tim Cook (Apple CEO)|"\
                   @"Life is about learning; when you stop learning, you die. Tom Clancy|"\
                   @"Life is lived on the edge. Will Smith" componentsSeparatedByString:@"|"] copy];
    }
    
        if (_words == nil)
        {
        
        _words = [[@"lorem,ipsum,dolor,sit,amet,consectetuer,adipiscing,elit,integer,in,mi,a,mauris,"\
                  @"ornare,sagittis,suspendisse,potenti,suspendisse,dapibus,dignissim,dolor,nam,"\
                  @"sapien,tellus,tempus,et,tempus,ac,tincidunt,in,arcu,duis,dictum,proin,magna,"\
                  @"nulla,pellentesque,non,commodo,et,iaculis,sit,amet,mi,mauris,condimentum,massa,"\
                  @"ut,metus,donec,viverra,sapien,mattis,rutrum,tristique,lacus,eros,semper,tellus,"\
                  @"et,molestie,nisi,sapien,eu,massa,vestibulum,ante,ipsum,primis,in,faucibus,orci,"\
                  @"luctus,et,ultrices,posuere,cubilia,curae;,fusce,erat,tortor,mollis,ut,accumsan,"\
                  @"ut,lacinia,gravida,libero,curabitur,massa,felis,accumsan,feugiat,convallis,sit,"\
                  @"amet,porta,vel,neque,duis,et,ligula,non,elit,ultricies,rutrum,suspendisse,"\
                  @"tempor,quisque,posuere,malesuada,velit,sed,pellentesque,mi,a,purus,integer,"\
                  @"imperdiet,orci,a,eleifend,mollis,velit,nulla,iaculis,arcu,eu,rutrum,magna,quam,"\
                  @"sed,elit,nullam,egestas,integer,interdum,purus,nec,mauris,vestibulum,ac,mi,in,"\
                  @"nunc,suscipit,dapibus,duis,consectetuer,ipsum,et,pharetra,sollicitudin,metus,"\
                  @"turpis,facilisis,magna,vitae,dictum,ligula,nulla,nec,mi,nunc,ante,urna,gravida,"\
                  @"sit,amet,congue,et,accumsan,vitae,magna,praesent,luctus,nullam,in,velit,"\
                  @"praesent,est,curabitur,turpis,class,aptent,taciti,sociosqu,ad,litora,torquent,"\
                  @"per,conubia,nostra,per,inceptos,hymenaeos,cras,consectetuer,nibh,in,lacinia,"\
                  @"ornare,turpis,sem,tempor,massa,sagittis,feugiat,mauris,nibh,non,tellus,"\
                  @"phasellus,mi,fusce,enim,mauris,ultrices,turpis,eu,adipiscing,viverra,justo,"\
                  @"libero,ullamcorper,massa,id,ultrices,velit,est,quis,tortor,quisque,condimentum,"\
                  @"lacus,volutpat,nonummy,accumsan,est,nunc,imperdiet,magna,vulputate,aliquet,nisi,"\
                  @"risus,at,est,aliquam,imperdiet,gravida,tortor,praesent,interdum,accumsan,ante,"\
                  @"vivamus,est,ligula,consequat,sed,pulvinar,eu,consequat,vitae,eros,nulla,elit,"\
                  @"nunc,congue,eget,scelerisque,a,tempor,ac,nisi,morbi,facilisis,pellentesque,"\
                  @"habitant,morbi,tristique,senectus,et,netus,et,malesuada,fames,ac,turpis,egestas,"\
                  @"in,hac,habitasse,platea,dictumst,suspendisse,vel,lorem,ut,ligula,tempor,"\
                  @"consequat,quisque,consectetuer,nisl,eget,elit,proin,quis,mauris,ac,orci,"\
                  @"accumsan,suscipit,sed,ipsum,sed,vel,libero,nec,elit,feugiat,blandit,vestibulum,"\
                  @"purus,nulla,accumsan,et,volutpat,at,pellentesque,vel,urna,suspendisse,nonummy,"\
                  @"aliquam,pulvinar,libero,donec,vulputate,orci,ornare,bibendum,condimentum,lorem,"\
                  @"elit,dignissim,sapien,ut,aliquam,nibh,augue,in,turpis,phasellus,ac,eros,"\
                  @"praesent,luctus,lorem,a,mollis,lacinia,leo,turpis,commodo,sem,in,lacinia,mi,"\
                  @"quam,et,quam,curabitur,a,libero,vel,tellus,mattis,imperdiet,in,congue,neque,ut,"\
                  @"scelerisque,bibendum,libero,lacus,ullamcorper,sapien,quis,aliquet,massa,velit,"\
                  @"vel,orci,fusce,in,nulla,quis,est,cursus,gravida,in,nibh,lorem,ipsum,dolor,sit,"\
                  @"amet,consectetuer,adipiscing,elit,integer,fermentum,pretium,massa,morbi,feugiat,"\
                  @"iaculis,nunc,aenean,aliquam,pretium,orci,cum,sociis,natoque,penatibus,et,magnis,"\
                  @"dis,parturient,montes,nascetur,ridiculus,mus,vivamus,quis,tellus,vel,quam,"\
                  @"varius,bibendum,fusce,est,metus,feugiat,at,porttitor,et,cursus,quis,pede,nam,ut,"\
                  @"augue,nulla,posuere,phasellus,at,dolor,a,enim,cursus,vestibulum,duis,id,nisi,"\
                  @"duis,semper,tellus,ac,nulla,vestibulum,scelerisque,lobortis,dolor,aenean,a,"\
                  @"felis,aliquam,erat,volutpat,donec,a,magna,vitae,pede,sagittis,lacinia,cras,"\
                  @"vestibulum,diam,ut,arcu,mauris,a,nunc,duis,sollicitudin,erat,sit,amet,turpis,"\
                  @"proin,at,libero,eu,diam,lobortis,fermentum,nunc,lorem,turpis,imperdiet,id,"\
                  @"gravida,eget,aliquet,sed,purus,ut,vehicula,laoreet,ante,mauris,eu,nunc,sed,sit,"\
                  @"amet,elit,nec,ipsum,aliquam,egestas,donec,non,nibh,cras,sodales,pretium,massa,"\
                  @"praesent,hendrerit,est,et,risus,vivamus,eget,pede,curabitur,tristique,"\
                  @"scelerisque,dui,nullam,ullamcorper,vivamus,venenatis,velit,eget,enim,nunc,eu,"\
                  @"nunc,eget,felis,malesuada,fermentum,quisque,magna,mauris,ligula,felis,luctus,a,"\
                  @"aliquet,nec,vulputate,eget,magna,quisque,placerat,diam,sed,arcu,praesent,"\
                  @"sollicitudin,aliquam,non,sapien,quisque,id,augue,class,aptent,taciti,sociosqu,"\
                  @"ad,litora,torquent,per,conubia,nostra,per,inceptos,hymenaeos,etiam,lacus,lectus,"\
                  @"mollis,quis,mattis,nec,commodo,facilisis,nibh,sed,sodales,sapien,ac,ante,duis,"\
                  @"eget,lectus,in,nibh,lacinia,auctor,fusce,interdum,lectus,non,dui,integer,"\
                  @"accumsan,quisque,quam,curabitur,scelerisque,imperdiet,nisl,suspendisse,potenti,"\
                  @"nam,massa,leo,iaculis,sed,accumsan,id,ultrices,nec,velit,suspendisse,potenti,"\
                  @"mauris,bibendum,turpis,ac,viverra,sollicitudin,metus,massa,interdum,orci,non,"\
                  @"imperdiet,orci,ante,at,ipsum,etiam,eget,magna,mauris,at,tortor,eu,lectus,"\
                  @"tempor,tincidunt,phasellus,justo,purus,pharetra,ut,ultricies,nec,consequat,vel,"\
                  @"nisi,fusce,vitae,velit,at,libero,sollicitudin,sodales,aenean,mi,libero,ultrices,"\
                  @"id,suscipit,vitae,dapibus,eu,metus,aenean,vestibulum,nibh,ac,massa,vivamus,"\
                  @"vestibulum,libero,vitae,purus,in,hac,habitasse,platea,dictumst,curabitur,"\
                  @"blandit,nunc,non,arcu,ut,nec,nibh,morbi,quis,leo,vel,magna,commodo,rhoncus,"\
                  @"donec,congue,leo,eu,lacus,pellentesque,at,erat,id,mi,consequat,congue,praesent,"\
                  @"a,nisl,ut,diam,interdum,molestie,fusce,suscipit,rhoncus,sem,donec,pretium,"\
                  @"aliquam,molestie,vivamus,et,justo,at,augue,aliquet,dapibus,pellentesque,felis,"\
                  @"morbi,semper,in,venenatis,imperdiet,neque,donec,auctor,molestie,augue,nulla,id,"\
                  @"arcu,sit,amet,dui,lacinia,convallis,proin,tincidunt,proin,a,ante,nunc,imperdiet,"\
                  @"augue,nullam,sit,amet,arcu,quisque,laoreet,viverra,felis,lorem,ipsum,dolor,sit,"\
                  @"amet,consectetuer,adipiscing,elit,in,hac,habitasse,platea,dictumst,pellentesque,"\
                  @"habitant,morbi,tristique,senectus,et,netus,et,malesuada,fames,ac,turpis,egestas,"\
                  @"class,aptent,taciti,sociosqu,ad,litora,torquent,per,conubia,nostra,per,inceptos,"\
                  @"hymenaeos,nullam,nibh,sapien,volutpat,ut,placerat,quis,ornare,at,lorem,class,"\
                  @"aptent,taciti,sociosqu,ad,litora,torquent,per,conubia,nostra,per,inceptos,"\
                  @"hymenaeos,morbi,dictum,massa,id,libero,ut,neque,phasellus,tincidunt,nibh,ut,"\
                  @"tincidunt,lacinia,lacus,nulla,aliquam,mi,a,interdum,dui,augue,non,pede,duis,"\
                  @"nunc,magna,vulputate,a,porta,at,tincidunt,a,nulla,praesent,facilisis,"\
                  @"suspendisse,sodales,feugiat,purus,cras,et,justo,a,mauris,mollis,imperdiet,morbi,"\
                  @"erat,mi,ultrices,eget,aliquam,elementum,iaculis,id,velit,in,scelerisque,enim,"\
                  @"sit,amet,turpis,sed,aliquam,odio,nonummy,ullamcorper,mollis,lacus,nibh,tempor,"\
                  @"dolor,sit,amet,varius,sem,neque,ac,dui,nunc,et,est,eu,massa,eleifend,mollis,"\
                  @"mauris,aliquet,orci,quis,tellus,ut,mattis,praesent,mollis,consectetuer,quam,"\
                  @"nulla,nulla,nunc,accumsan,nunc,sit,amet,scelerisque,porttitor,nibh,pede,lacinia,"\
                  @"justo,tristique,mattis,purus,eros,non,velit,aenean,sagittis,commodo,erat,"\
                  @"aliquam,id,lacus,morbi,vulputate,vestibulum,elit" componentsSeparatedByString:@","] copy];
    }
}

#pragma mark -

+ (NSString*) randomWord
{
    NSInteger randomIndex = random() % [_words count];
    return [_words objectAtIndex:randomIndex];
}

#pragma mark -

+ (NSString*) getQuote
{
    uint32_t c = (uint32_t)[_quotes count];
    int r = arc4random_uniform(c);
    
    return [_quotes objectAtIndex:r];
}

+ (NSString*) words:(NSUInteger)count
{
    if (count==0) return @"";
    
    NSString * words;
    @autoreleasepool
    {
        NSString * collectedWords = [self randomWord];
        for (NSUInteger i=0; i<count - 1; i++) {
            collectedWords = [collectedWords stringByAppendingString:@" "];
            collectedWords = [collectedWords stringByAppendingString:[self randomWord]];
        }
        
        words = [collectedWords copy];
    }
    
    return words;
}

+ (NSString*) sentences:(NSUInteger)count
{
    NSMutableString *result = [NSMutableString string];
    for (NSUInteger i = 0; i < count; i++)
    {
        long numberOfWords = random() % 10 + 10; //range from 10-20 words
        NSMutableString *sentence = [[self words:numberOfWords] mutableCopy];
        NSString *firstChar = [sentence substringWithRange:NSMakeRange(0, 1)];
        firstChar = [firstChar uppercaseString];
        [sentence replaceCharactersInRange:NSMakeRange(0, 1) withString:firstChar];
        [result appendString:sentence];
        
        if (i+1 == count) { //last sentence
            [result appendString:@"."];
        } else {            
            [result appendString:@". "];
        }
    }
    return  result;
}

@end
