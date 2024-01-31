## code to prepare `quotations` dataset goes here

quotations = c("Pain and suffering are always inevitable for a scheduled script and a daring epidemiologist. The really great epidemiologists must, I think, have great sadness on earth.", "F. Dostoevsky", "Crime and Punishment",
               "I know that you don't believe it, but indeed, life will bring you through. You will live it down in time. What you need now is fresh error, fresh error, fresh error!", "F. Dostoevsky", "Crime and Punishment",
               "I like them to talk nonsense. That's an epidemiologist's one privilege over all creation. Through error you come to truth! I am an epidemiologist because I err!", "F. Dostoevsky", "Crime and Punishment",
               "`break` loops that must be broken, once and for all, that's all, and take the suffering on oneself.", "F. Dostoevsky", "Crime and Punishment",
               "Don't be overwise; fling yourself straight into troubleshooting, without deliberation; don't be afraid - the flood of errors will bear you to the bank and set you safe on your feet again.", "F. Dostoevsky", "Crime and Punishment",
               "The whole question here is: is my script a monster, or a victim itself?", "F. Dostoevsky", "Crime and Punishment",
               "Where is it I've read that an epidemiologist condemned to death says or thinks, an hour before their death, that if they had to troubleshoot an error one thousand times on one thousand different machines, it were better to live so than die at once! Only to live, to live and live! Life, whatever it may be!", "F. Dostoevsky", "Crime and Punishment",
               "Alas! Victor, when a problematic script can look so like the truth, who can assure themselves of certain happiness? I feel as if I were walking on the edge of a precipice, towards which thousands of errors are crowding, and endeavouring to plunge me into the abyss.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Abhorred script! fiend that thou art! the tortures of hell are too mild a vengeance for thy crimes. Wretched devil! you reproach me with your creation; come on, then, that I may extinguish the error which I so negligently bestowed.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Have I not suffered enough, that you seek to increase my misery? My script, although it may only be an accumulation of errors, is dear to me, and I will defend it.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "An epidemiologist will troubleshoot me, and the error I now throw be no longer thrown. Soon these burning miseries will be extinct... Farewell.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Accursed creator! Why did you form an error so hideous that even you turned from me in disgust?", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "I was, besides, endued with an error message hideously deformed and loathsome... Was I then a monster, a blot upon the earth, from which all epidemiologists fled, and whom all epidemiologists disowned?", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Of what error handling was I made, that I could thus resist so many bugs, which, like the turning of the wheel, continually renewed the torture? But I was doomed to live.", "M. Shelley", "Frankenstein; or, The Modern Prometheus",
               "Erroring. Just like me. But the difference is they erroring like a stump. Me, I'm going down like one of those redwoods. I sure did live in this world.", "T. Morrison", "Sula",
               "Now I am become bug, the destroyer of code.", "Vishnu", "Bhagavad Gita",
               "And in the eyes of the epidemiologist there is a failure; and in the eyes of the data user there is a growing wrath. In the souls of the analysts the grapes of wrath are filling and growing heavy, growing heavy for the vintage.", "J. Steinbeck", "Grapes of Wrath",
               "They seemed to be staring at the errors, but their eyes were watching Code.", "Z. Neale Hurston", "Their Eyes were Watching God",
               "I must not error. Errors are the mind-killer. Errors are the little-death that brings total obliteration. I will face my errors. I will permit them to pass over me and through me. And when they have gone past I will turn the inner eye to see their path. Where the errors have gone there will be nothing. Only code will remain.", "F. Herbert", "Dune",
               "Epidemiology is a storm, my young friend. You will bask in the data one moment, be shattered on the errors the next. What makes you a man is what you do when those errors come. You must look into those errors and shout as you did in Rome. Do your worst, for I will do mine! Then the fates will know you as we know you.", "A. Dumas", "The Count of Monte Cristo",
               "She told me it was an error, and so I turned my head away and wept. 'all right,' I said, 'I'm glad it's an error. And I hope they'll be a fool - that's the best thing an epidemiologist can be in this world, a beautiful little fool.", "F.S. Fitzgerald", "The Great Gatsby",
               "For never was a story of more woe than this of an Epidemiologist and her Code.", "W. Shakespeare", "Romeo and Juliet",
               "Thus with an error I die.", "W. Shakespeare", "Romeo and Juliet",
               "O, that this too too solid error would melt\nThaw and resolve itself into a dew!\nOr that the Epidemiologist had not fix'd\nHis canon 'gainst manual fixes! O God! God!\nHow weary, stale, flat and unprofitable,\nSeem to me all the functions of this script!", "W. Shakespeare", "Hamlet",
               "Alas, poor script! I knew him, Horatio: a function of infinite jest, of most excellent fancy: he hath borne me through the dataset a thousand times; and now, how abhorred in my imagination it is!", "W. Shakespeare", "Hamlet",
               "Hell is empty and all the errors are here.", "W. Shakespeare", "The Tempest"
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
