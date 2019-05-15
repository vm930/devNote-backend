# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User id: nil, user_name: nil, password_digest: nil, full_name: nil, bio: nil, email: nil, avatar_url: nil, created_at: nil, updated_at: nil


victoria = User.create(user_name:"victoriamei", full_name:"Victoria Mei", bio:"forever learner", email: "victoriamei@gmail.com")
vicky = User.create(user_name:"vickyhuang", full_name:"Vicky Huang", bio:":)", email: "vickyhuang@gmail.com")
jon = User.create(user_name:"jon", full_name:"Jon Jon", bio:"whatever", email: "jon@gmail.com")
tony = User.create(user_name:"tony", full_name:"Tony T", bio:"forever vacay", email: "tony@gmail.com")
ryan = User.create(user_name:"ryan", full_name:"Ryan R", bio:"sick!", email: "ryan@gmail.com")
naomi = User.create(user_name:"naomi", full_name:"Naomi", bio:"yeeeet", email: "naomi@gmail.com")
mica = User.create(user_name:"mica", full_name:"Mica", bio:"cuty pie", email: "mica@gmail.com")
alex = User.create(user_name:"alex", full_name:"Peter Parker", bio:"Gothem", email: "alex@gmail.com")
steven = User.create(user_name:"stevenbeef", full_name:"Steven Beef", bio:"beefy", email: "steveni@gmail.com")
 
puts "made users"

# Note id: nil, title: nil, user_id: nil, date: nil, note_value: nil, created_at: nil, updated_at: nil 

note1 = Note.create(title: "chapter1", user_id: vicky.id, date:"20150901", note_value: "Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages. Unpleasing has ask acceptance partiality alteration understood two. Worth no tiled my at house added. Married he hearing am it totally removal. Remove but suffer wanted his lively length. Moonlight two applauded conveying end direction old principle but. Are expenses distance weddings perceive strongly who age domestic." )
note2 = Note.create(title: "chapter1", user_id: vicky.id, date:"20150901", note_value: "Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh." )
note3 = Note.create(title: "chapter2", user_id: vicky.id, date:"20150901", note_value: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc." )
note4 = Note.create(title: "yeet", user_id: victoria.id, date:"20150901", note_value: "A dismal demise founds the dictator. A scattered virus runs before the definitive oil. Your tough hunts behind a contempt. The paranoid opponent frowns an acoustic doctrine." )
note5 = Note.create(title: "chapter4", user_id: victoria.id, date:"20150901", note_value: "The elephant forests the lying nostalgia beneath the farce. Can his backward hierarchy count the toy? The relevant fountain raves around the enormous voltage. Under the catholic intervenes the religious weather. The vocabulary freezes beside the beforehand missile." )
note6 = Note.create(title: "chapter5", user_id: steven.id, date:"20150901", note_value: "The thirst correlates a differing blackmail. The astronomer forests a bullet. A cluster surfaces against the dummy. The sentimental stereotype relaxes without the consulting unconscious. How does the tiger volunteer in her licensed consequence?" )
note7 = Note.create(title: "chapter6", user_id: tony.id, date:"20150901", note_value: "Why can't an initiative idiot smell on top of a factory? Each ethical medicine spreads whatever flowing anniversary. The liver swings behind the boot! A provocative lung provokes the weapon past the curly contour. The solicitor sneaks the false contour. Outside a confidence strikes each night." )
note8 = Note.create(title: "chapter20", user_id: alex.id, date:"20150901", note_value: "The protest multiplies! Why won't each supplier calculate? A family bests a rigid ancestor in the spiral. How can his political microprocessor vouch your male? A backlog reigns in the labelled center." )
note9 = Note.create(title: "chapter100", user_id: mica.id, date:"20150901", note_value: "An angel celebrates the folk computer. The phrase rests without a rested plotter. How will the lawyer groan with the orient axiom? When will the bat revolt? The sticky bonus scraps the confused courage." )
note10 = Note.create(title: "word", user_id: mica.id, date:"20150901", note_value: "A secretary waves outside the loaded porter. Why does the enclosed elevator leap before a volunteer? The origin predicts the unseen. A piece undergoes the antidote. How will any boredom interfere? Does every intended background confine her symbolic vendor?" )
note11 = Note.create(title: "candybar", user_id: naomi.id, date:"20150901", note_value: "The hangover gangs the orienting contrast. The badge builds the yeti. How will the reasoned buyer burden a paperback? The helpless triangle elaborates across a swept recovery. The listed rain objects into an admirable committee." )
note12 = Note.create(title: "GOT", user_id: jon.id, date:"20150901", note_value: "The distress warrants the officer. The occupied cash loses a cosmic change. The guest motor hunts into a coal. A target results within a goldfish. The perspective activates every scientist. The largest biography regains a photo." )
note13 = Note.create(title: "dragons", user_id: ryan.id, date:"20150901", note_value: "Every head scarf crashes next to the donated pedal. The monarch birth envisages the good dye. A saved advocate blasts an egg. An attack parades without the childhood!" )

puts "made notes"



# Code id: nil, title: nil, style: nil, mode: nil, code_value: nil, created_at: nil, updated_at: nil

code1 =  Code.create(title:"nice", style: "github", mode:"javascript", code_value:"Can a provoked contest pencil the together hypocrite?")
code2 =  Code.create(title:"complaint", style: "github", mode:"java", code_value:"Her hog whoops an addict.")
code3 =  Code.create(title:"bother", style: "github", mode:"sql", code_value:"Before the irony sings the collective.")
code4 =  Code.create(title:"cent", style: "dismissed", mode:"javascript", code_value:"A miscellaneous breach invalidates the akin mouth.")
code5 =  Code.create(title:"ground", style: "functioning", mode:"ruby", code_value:"How will the landed metric vanish?")
code6 =  Code.create(title:"lullaby", style: "narrow", mode:"python", code_value:"Opposite the tongue leaks a sane gun.")
code7 =  Code.create(title:"informality", style: "washed", mode:"golang", code_value:"Should a jam dole the limited mixture?")
code7 =  Code.create(title:"hobo", style: "steep", mode:"css", code_value:"The floppy explodes below the accomplished map.")
code8 =  Code.create(title:"swapped", style: "few", mode:"html", code_value:"Can a bite volunteer beside the harmless vegetarian?")
code9 =  Code.create(title:"clue", style: "prior", mode:"csharp", code_value:"When can the left connector follow the sympathy?")

puts "made codes"


# NoteCode id: nil, code_id: nil, note_id: nil, created_at: nil, updated_at: nil

note_code1 = NoteCode.create(code_id:code1, note_id:note13.id)
note_code2 = NoteCode.create(code_id:code1, note_id:note13.id)
note_code3 = NoteCode.create(code_id:code3, note_id:note12.id)
note_code4 = NoteCode.create(code_id:code3, note_id:note12.id)
note_code5 = NoteCode.create(code_id:code3, note_id:note12.id)
note_code6 = NoteCode.create(code_id:code2, note_id:note2.id)
note_code7 = NoteCode.create(code_id:code4, note_id:note10.id)
note_code8 = NoteCode.create(code_id:code4, note_id:note11.id)
note_code9 = NoteCode.create(code_id:code5, note_id:note9.id)
note_code10 = NoteCode.create(code_id:code6, note_id:note8.id)
note_code11 = NoteCode.create(code_id:code9, note_id:note7.id)
note_code12 = NoteCode.create(code_id:code7, note_id:note6.id)
note_code13 = NoteCode.create(code_id:code7, note_id:note5.id)
note_code14 = NoteCode.create(code_id:code7, note_id:note4.id)
note_code15 = NoteCode.create(code_id:code8, note_id:note3.id)
note_code16 = NoteCode.create(code_id:code9, note_id:note1.id)

puts "made note-codes"

