
Cussword.destroy_all
strings = %w(anus
 anal
 anus-face
 anus-mouth
 arse
 ass
 ass-clown
 assface
 asshole
 asswipe
 ass-rag
 ball-breaker
 ball-buster
 bastard
 batshit
 beener
 berk
 bile
 bimbo
 bollock
 bollocks
 bullshit
 bullpiss
 cesspool
 condom
 corn\ hole
 cornhole
 crack-spackler
 crabface
 crap
 crapface
 craphead
 crapper
 crack-sweat
 cum-bucket
 cum-bubble
 cum-stain
 dangleberry
 devil
 dick\ wad
 dick\ weed
 dicknose
 dickwad
 dickweed
 dingleberry
 dipstick
 douche
 douchebag
 dragon-fart
 dragon-guff
 ejacu-rag
 ejaculator
 face
 foreskin
 fuck
 fucked
 fucker
 fuckers
 fuckface
 fuckhead
 fuckhole
 fucking
 fucknut
 fucknuts
 fucks
 fuckshit
 fuckstick
 fungus
 git
 gnat-piss
 gooch
 guff
 hell
 horse\ shit
 horseshit
 hot-beef\ injection
 juicer
 juice-monger
 koochie
 kootch
 limpdick
 love\ canal
 mangina
 motherfucker
 motherfucker
 motherfucker
 mummified
 nipple
 nose-wipe
 nose-rag
 nutter
 panocha
 pecker
 peckerhead
 peckernose
 phelch
 phelcher
 pheltch
 pheltcher
 phlegm
 penis\ wrinkle
 peniswrinkle
 pecker
 pee-face
 pee-drinker
 pee-worm
 piss
 piss-face
 piss-worm
 pito
 plunge\ hole
 polesmoker
 pillock
 plunger
 poop\ chute
 poop\ stain
 poopchute
 poopstain
 pox
 puke-breath
 pustule
 rectum
 rim\ job
 rimjob
 rotter
 sack
 schlong
 schmuck
 shit
 shits
 shit\ eater
 shit\ face
 shit\ faced
 shit\ head
 shit\ kicker
 shiteater
 shitface
 shitfaced
 shithead
 shitkicker
 shit-plunger
 shitter
 skank
 smegma
 spawn
 sphincter\ boy
 sphincter\ face
 sphincterboy
 sphincterface
 stink
 stew
 toad
 toad-spawn
 testes
 testicles
 titty
 titty\ twisted
 toe-jam
 troll
 troll-guff
 wally
 wanker
 wipe)
cusswords_hash = strings.map do |w|
  threes = ['anal', 'shit', 'fuck', 'anus', 'fvck', 'cum', 'penis', 'testicles',
     'poop', 'rim job', 'rimjob', 'kootch', 'wanker', 'rectum', 'bollocks', 'ejaculator']
  twos = ['sphincter', 'ass', 'dick', 'arse', 'hole', 'bimbo', 'titty', 'puta', 'foreskin',
        'crack spackler', 'ejacu-rag', 'piss', 'piss-face', 'piss-worm', 'mangina',
        'crack-sweat', 'crack-spackler', 'dragon-fart']
  if threes.any? {|x| w.include?(x)}
    r = 3
  elsif twos.any? {|x| w.include?(x)}
    r = 2
  else
    r = 1
  end
    {word: w, rating: r}
end

words = Cussword.create(cusswords_hash)
puts "Hoorah! A fresh list of #{Cussword.count} swear words now lives in your machine!"
