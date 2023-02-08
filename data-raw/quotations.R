## code to prepare `quotations` dataset goes here

quotations = c("When reason fails, the epidemiologist helps!", "F. Dostoevsky", "Crime and Punishment",
               "Pain and suffering are always inevitable for a scheduled script and a daring epidemiologist. The really great epidemiologists must, I think, have great sadness on earth.", "F. Dostoevsky", "Crime and Punishment",
               "I know that you don't believe it, but indeed, life will bring you through. You will live it down in time. What you need now is fresh error, fresh error, fresh error!", "F. Dostoevsky", "Crime and Punishment",
               "I like them to talk nonsense. That's an epidemiologist's one privilege over all creation. Through error you come to truth! I am an epidemiologist because I err!", "F. Dostoevsky", "Crime and Punishment",
               "To go wrong in one's own way is better than to go right in someone else's. In the first case you are an epidemiologist, in the second you are no better than a bird.", "F. Dostoevsky", "Crime and Punishment",
               "break() what must be broken, once and for all, that's all, and take the suffering on oneself.", "F. Dostoevsky", "Crime and Punishment",
               "Don't be overwise; fling yourself straight into troubleshooting, without deliberation; don't be afraid - the flood of errors will bear you to the bank and set you safe on your feet again.", "F. Dostoevsky", "Crime and Punishment",
               "The whole question here is: is my script a monster, or a victim itself?", "F. Dostoevsky", "Crime and Punishment",
               "Where is it I've read that an epidemiologist condemned to death says or thinks, an hour before their death, that if they had to troubleshoot an error one thousand times on one thousand different machines, it were better to live so than die at once! Only to live, to live and live! Life, whatever it may be!", "F. Dostoevsky", "Crime and Punishment",
               "Alas! Victor, when a problematic script can look so like the truth, who can assure themselves of certain happiness? I feel as if I were walking on the edge of a precipice, towards which thousands of errors are crowding, and endeavouring to plunge me into the abyss.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Abhorred script! fiend that thou art! the tortures of hell are too mild a vengeance for thy crimes. Wretched devil! you reproach me with your creation; come on, then, that I may extinguish the error which I so negligently bestowed.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Have I not suffered enough, that you seek to increase my misery? My script, although it may only be an accumulation of errors, is dear to me, and I will defend it.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "An epidemiologist will troubleshoot me, and the error I now throw be no longer thrown. Soon these burning miseries will be extinct... Farewell.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Accursed creator! Why did you form an error so hideous that even you turned from me in disgust?", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "I was, besides, endued with an error message hideously deformed and loathsome... Was I then a monster, a blot upon the earth, from which all epidemiologists fled, and whom all epidemiologists disowned?", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Of what materials was I made, that I could thus resist so many errors, which, like the turning of the wheel, continually renewed the torture? But I was doomed to live.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Erroring. Just like me. But the difference is they erroring like a stump. Me, I'm going down like one of those redwoods. I sure did live in this world.", "T. Morrison", "Sula",
               "Now I am become bug, the destroyer of code.", "Vishnu", "Bhagavad Gita",
               "It is a truth universally acknowledged that a single man in possession of a good dataset, must be in want of an epidemiologist.",  "J. Austen", "Pride and Prejudice",
               "It was the best of times, it was the worst of times.We had everything before us and we had errors before us.", "C. Dickens", "A Tale of Two Cities",
               "And in the eyes of the epidemiologist there is a failure; and in the eyes of the data user there is a growing wrath. In the souls of the analysts the grapes of wrath are filling and growing heavy, growing heavy for the vintage.", "J. Steinbeck", "Grapes of Wrath",
               "They seemed to be staring at the errors, but their eyes were watching Code.", "Z. Neale Hurston", "Their Eyes were Watching God",
               "I must not error. Errors are the mind-killer. Errors are the little-death that brings total obliteration. I will face my errors. I will permit them to pass over me and through me. And when they have gone past I will turn the inner eye to see their path. Where the errors have gone there will be nothing. Only code will remain.", "F. Herbert", "Dune",
               "Being dead is not worse than being an epidemiologist. It is different, though. You could say the view is larger.", "B. Kingsolver", "The Poisonwood Bible",
               "It's been my experience that you can nearly always enjoy epidemiology if you make up your mind firmly that you will.", "L.M. Montgomery", "Anne of Green Gables",
               "For the rebirth of the data was perpetual; only rebirth every hour could stay the hand of Satan.", "J. Baldwin", "Go Tell it On the Mountain",
               "That's the thing about epidemiologists. Every time they do something with data, even if they're not much to look at, or even if they're sort of stupid, you fall half in love with them, and then you never know where the hell you are. Epidemiologists. They can drive you crazy. They really can.", "J.D. Salinger", "Catcher in the Rye",
               "That is epidemiology; to be dissolved into something complete and great.", "W. Cather", "My Antonia",
               "Epidemiology is a storm, my young friend. You will bask in the data one moment, be shattered on the errors the next. What makes you a man is what you do when those errors come. You must look into those errors and shout as you did in Rome. Do your worst, for I will do mine! Then the fates will know you as we know you.", "A. Dumas", "The Count of Monte Cristo",
               "She told me it was an error, and so I turned my head away and wept. 'all right,' I said, 'I'm glad it's an error. And I hope they'll be a fool - that's the best thing an epidemiologist can be in this world, a beautiful little fool.", "F.S. Fitzgerald", "The Great Gatsby",
               "For never was a story of more woe than this of an Epidemiologist and her Code.", "W. Shakespeare", "Romeo and Juliet",
               "Thus with an error I die.", "W. Shakespeare", "Romeo and Juliet",
               "O, that this too too solid error would melt\nThaw and resolve itself into a dew!\nOr that the Epidemiologist had not fix'd\nHis canon 'gainst manual fixes! O God! God!\nHow weary, stale, flat and unprofitable,\nSeem to me all the functions of this script!", "W. Shakespeare", "Hamlet",
               "Alas, poor script! I knew him, Horatio: a function of infinite jest, of most excellent fancy: he hath  borne me through the dataset a thousand times; and now, how abhorred in my imagination it is!", "W. Shakespeare", "Hamlet",
               "Hell is empty and all the errors are here.", "W. Shakespeare", "The Tempest",
               "It takes an awful lot of character to quit coding when you are losing.", "W. Faulkner", "Absalom, Absalom!",
               "I know now that what makes an epidemiologist is an inability to take even his own good advice.", "W. Faulkner", "Light in August",
               "It is because an epidemiologist is more afraid of the errors he might have than he ever is of the errors he's already got. He'll cling to errors he's used to before he'll risk a change.", "W. Faulkner", "Light in August"
)

quotations = as.data.frame(
  matrix(
    quotations,
    ncol = 3,
    byrow = T,
    dimnames = list(NULL, c('quote', 'author', 'book'))
  )
)

usethis::use_data(quotations, overwrite = TRUE)
