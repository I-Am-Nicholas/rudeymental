
Cussword.destroy_all
strings = %w(anus
 anal
 arse
 ass
 ass\ clown
 ass\ face
 ass\ hole
 ass\ out
 ass\ wipe
 ass\ rag
 ball\ breaker
 ball\ buster
 baller
 balling
 bat\ shit
 batshit
 beaver
 beener
 big\ baller
 bigballer
 bimbo
 bite\ me
 blewinski
 blue\ ball
 blue\ balls
 blueball
 blueballs
 bullshit
 camel\ toe
 cameltoe
 condom
 coochie
 cootch
 cooze
 corn\ hole
 cornhole
 crack\ spackler
 crab\ face
 crap
 crap\ face
 crap\ head
 crapface
 craphead
 crapper
 cum\ bucket
 cum\ bubble
 cum\ stain
 dangelberry
 dangleberry
 deez\ nuts
 devil
 dick\ nose
 dick\ wad
 dick\ weed
 dicknose
 dickwad
 dickweed
 dildo
 dingleberry
 dipstick
 douche
 douche\ bag
 eggplant
 ejaculator
 finger\ bang
 finger\ banged
 finger\ banger
 finger\ fuck
 fingerbang
 fingerbanged
 fingerbanger
 fingerfuck
 fore\ skin
 foreskin
 fuck
 fuck\ face
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
 fuk
 fukkhead
 fur\ burger
 furburger
 furry\ burger
 fvck
 fvcker
 fvckface
 fvcking
 fvcknut
 fvcknuts
 hairy\ hatchet\ wound
 hairy\ taco
 hairytaco
 hell
 hitter
 hoochie\ mama
 horse\ shit
 horseshit
 hot-beef\ injection
 koochie
 koochy
 kootch
 lettuce\ picker
 lettucepicker
 licknipple
 limpdick
 love\ canal
 mangina
 mother\ fucker
 motherfucker
 motherfucker
 motherfucker
 nip
 nipple
 nutted
 nutter
 nutting
 one\ way\ pipe
 panocha
 pecker
 pecker\ head
 pecker\ nose
 peckerhead
 peckernose
 phelch
 phelcher
 pheltch
 pheltcher
 phlegm
 penis\ wrinkle
 peniswrinkle
 pipe\ hitter
 pipehitter
 piss
 piss\ drinker
 pito
 pole\ smoker
 polock
 poontang
 poop\ chute
 poop\ stain
 poopchute
 poopstain
 popped\ cherry
 poppedcherry
 puta
 rectum
 rim\ job
 rimjob
 satan
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
 shitter
 skank
 smegma
 snog
 sphincter\ boy
 sphincter\ face
 sphincterboy
 sphincterface
 testes
 testicles
 testicle\ polisher
 titty
 titty\ twisted
 wipe)
cusswords_hash = []
cusswords_hash = strings.map do |w|
  threes = ['anal', 'shit', 'fuck', 'anus', 'fuk', 'fvck', 'cum']
  twos = ['testicles', 'sphincter', 'poop', 'ass', 'dick', 'arse', 'penis', 'hole']
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
puts "Hoorah! A fresh list of #{Cussword.count} swear words now live in your machine!"
