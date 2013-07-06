#encoding: utf-8 

namespace :wedding do

  desc "Create all records for wedding guests"
  task :create_guest_party_records => :environment do
    
    p = Party.create(name: "Liz & Gerardo", username: "lizygerardo", password: "TogoTheDog", spanish: false, has_children: true)
    p.is_admin = true
    p.save
    Guest.create(name: "Gerardo Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Liz A. Perez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Cheo", username: "cheo", password: "o8e2h0c", spanish: true, has_children: false)
    Guest.create(name: "Cheo", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Rafa Vasquez", username: "rafavasquez", password: "ze3q6a7a2ar", spanish: true, has_children: true)
    Guest.create(name: "Rafa Vasquez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Catalina & Ruben", username: "catalinaruben", password: "n2b5ra7ila8ac", spanish: true, has_children: true)
    Guest.create(name: "Ruben", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Catalina", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Lorenzo", username: "lorenzo", password: "o2n4r59", spanish: false, has_children: false)
    Guest.create(name: "Lorenzo", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Yesenia & Steve", username: "yeseniasteve", password: "e5e2sa6n4s2y", spanish: false, has_children: true)
    Guest.create(name: "Steve", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Yesenia", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Caprice", age: 1, party_id: p.id, attending: true, primary_guest: false)
    Guest.create(name: "Alonzo", age: 1, party_id: p.id, attending: true, primary_guest: false)

    p = Party.create(name: "Rosa Linda", username: "rosalinda", password: "a2n5h5s9r", spanish: false, has_children: false)
    Guest.create(name: "Rosa Linda Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Laura & Glen", username: "lauraglen", password: "n432a1ual", spanish: false, has_children: true)
    Guest.create(name: "Laura Ramos-Neville", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Glen Neville", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Clarissa Gamolo", username: "clarissagamolo", password: "3a5as8ir2gc", spanish: false, has_children: false)
    Guest.create(name: "Clarissa Gamolo", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Lucia Meza", username: "luciameza", password: "a3e4ai2um", spanish: false, has_children: false)
    Guest.create(name: "Lucia Meza", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Amanda & David", username: "amandadavid", password: "di6a2ad8a9a", spanish: false, has_children: true)
    Guest.create(name: "David Montgomery", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Amanda Montgomery", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Isabella Montgomery", age: 8, party_id: p.id, attending: true, primary_guest: false)

    p = Party.create(name: "Amanda Lopez", username: "amandalopez", password: "z2p3la7n32a", spanish: false, has_children: false)
    Guest.create(name: "Amanda Lopez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Rodolfo Jimenez", username: "juanrodolfo", password: "f204or6a3j", spanish: false, has_children: true)
    Guest.create(name: "Sasha Harrison", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Rodolfo Jimenez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Emmanuel Garcia", username: "emmanuel", password: "g2u4a3m5", spanish: false, has_children: false)
    Guest.create(name: "Emmanuel Garcia", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Ermila & Aaron", username: "ermilaaaron", password: "9p2aa4gi3re", spanish: false, has_children: false)
    Guest.create(name: "Aaron Bingham", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Ermila Rodriguez-Bingham", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Jessica & Kellan", username: "jessicakellan", password: "na37ekais5e", spanish: false, has_children: false)
    Guest.create(name: "Kellan Craddock", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Jessica Tsuji Craddock", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Mihn & Floyd", username: "mihnfloyd", password: "dy34fnhi5", spanish: false, has_children: true)
    Guest.create(name: "Floyd", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Mihn", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Kennedy", age: 8, party_id: p.id, attending: true, primary_guest: false)

    p = Party.create(name: "Mary & Luis", username: "maryluis", password: "siu8y3a2", spanish: false, has_children: false)
    Guest.create(name: "Luis de la O", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Mary Pacheco", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Juliana Guzman", username: "julianaguzman", password: "n2z6ga79j", spanish: false, has_children: false)
    Guest.create(name: "Juliana Guzman", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Lorena & Luis", username: "lorenaluis", password: "siu2a8er5", spanish: false, has_children: false)
    Guest.create(name: "Luis Tercero", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Lorena Landeros", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Veronica & Orlando", username: "veronicaorlando", password: "6d3aracn4re", spanish: false, has_children: false)
    Guest.create(name: "Orlando Bravo", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Veronica Bravo", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Diana Rodriguez", username: "dianarodriguez", password: "z2ird3rn7id", spanish: false, has_children: true)
    Guest.create(name: "Diana Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Lindsay & Mayra", username: "lindsaymayra", password: "a3ya7y4sdn", spanish: false, has_children: false)
    Guest.create(name: "Mayra Nevarez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Lindsay Nevarez", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Misael Rios", username: "misaelrios", password: "s3ir7as8m", spanish: false, has_children: false)
    Guest.create(name: "Misael Rios", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Pedro Rios", username: "pedrorios", password: "r58r8rdep", spanish: false, has_children: false)
    Guest.create(name: "Pedro Rios", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Marylyn Rios", username: "marylynrios", password: "3i7ray9yra", spanish: false, has_children: false)
    Guest.create(name: "Marylyn Rios", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Brenda Sifuentez", username: "brendasifuentez", password: "z7ne5isad3r", spanish: false, has_children: false)
    Guest.create(name: "Brenda Sifuentez", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Mario Sifuentez", username: "mariosifuentez", password: "et3eu6is9ir", spanish: false, has_children: false)
    Guest.create(name: "Mario Sifuentez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Mindalay & Maricela", username: "minda", password: "4im2c5a", spanish: false, has_children: false)
    Guest.create(name: "Mindalay", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Maricela", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Aurelio Perez", username: "aurelio", password: "5i6eru2a", spanish: false, has_children: false)
    Guest.create(name: "Aurelio Perez", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Marco Perez", username: "marco", password: "9c4ra5m", spanish: false, has_children: false)
    Guest.create(name: "Marco Perez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Elana", username: "elana", password: "a22na5e", spanish: false, has_children: true)
    Guest.create(name: "Elana", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Juanita & Antonio", username: "juanitaantonio", password: "9itati5a3j", spanish: true, has_children: false)
    Guest.create(name: "Antonio Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Juanita Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Lupita Rodriguez", username: "lupita", password: "at4ipu5", spanish: false, has_children: false)
    Guest.create(name: "Lupita Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Angelica Rodriguez", username: "angelica", password: "aci3e6na", spanish: false, has_children: false)
    Guest.create(name: "Angelica Rodriguez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Garcia", username: "garcia", password: "a3icr4ag", spanish: false, has_children: false)
    Guest.create(name: "Refugio", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Lourdes", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Jisselle", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Lissette Garcia Sanguino", username: "lissette", password: "y2rhi59", spanish: false, has_children: true)
    Guest.create(name: "Lissette Garcia Sanguino", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Alma & Eulalio", username: "almaeulalio", password: "3i5auam7a", spanish: true, has_children: true)
    Guest.create(name: "Eulalio Perez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Alma Perez Cardenas", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Jose", username: "jose", password: "2h3es8j", spanish: true, has_children: false)
    Guest.create(name: "Jose Perez", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Rodriguez", username: "jorge", password: "5e8r4j7", spanish: false, has_children: false)
    Guest.create(name: "Jorge", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Ofelia", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Rosendo", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Rodriguez", username: "pedromartha", password: "a8ra36rdp", spanish: false, has_children: false)
    Guest.create(name: "Pedro Jr.", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Adriana", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Pedro", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Martha", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Teresa Gonzalez", username: "teresagonzalez", password: "ze3n5ga4r", spanish: false, has_children: false)
    Guest.create(name: "Teresa Gonzalez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Katherine & Roscoe", username: "katherineroscoe", password: "es3ri5eh5ak", spanish: false, has_children: false)
    Guest.create(name: "Roscoe", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Katherine", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Greg Levine", username: "greglevine", password: "n8ve5g7rg", spanish: false, has_children: false)
    Guest.create(name: "Greg Levine", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Chris Rohde", username: "chrisrohde", password: "5dh9s2rc", spanish: false, has_children: true)
    Guest.create(name: "Chris Rohde", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Deanna & Earl", username: "deannaearl", password: "4a2an5ad", spanish: false, has_children: true)
    Guest.create(name: "Earl Swigert", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Deanna Swigert", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Nancy & Gerardo", username: "nancygerardo", password: "dr5ae2y8a", spanish: false, has_children: false)
    Guest.create(name: "Gerardo Ochoa", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Nancy Ramirez Arriaga", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Leonardo Ochoa", username: "leoochoa", password: "a3hc28e5", spanish: false, has_children: false)
    Guest.create(name: "Leonardo Ochoa", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Brenda Ramos", username: "brendaramos", password: "s3a4d6eb", spanish: false, has_children: false)
    Guest.create(name: "Brenda Ramos", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Damir Tuka", username: "damirtuka", password: "a2u4ri8ad", spanish: false, has_children: false)
    Guest.create(name: "Damir Tuka", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Nancy & Scott", username: "nancyscott", password: "tt3c5yc7an", spanish: false, has_children: false)
    Guest.create(name: "Scott Lu", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Nancy Saechao", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Florice & Joey", username: "floricejoey", password: "ye4j5ir6f", spanish: false, has_children: false)
    Guest.create(name: "Joey Tsai", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Florice Lim", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Hollee & Jose", username: "holleejose", password: "es7j4e83h", spanish: false, has_children: true)
    Guest.create(name: "Jose Arreola", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Hollee Arreola", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Eric & James", username: "ericjames", password: "s3m5j7i2e", spanish: false, has_children: false)
    Guest.create(name: "James", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Eric", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Heather Amory", username: "heatheramory", password: "r3m5reh9eh", spanish: false, has_children: false)
    Guest.create(name: "Heather Amory", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Sarita & Jaime", username: "saritajaime", password: "m2a5at3r8s", spanish: false, has_children: false)
    Guest.create(name: "Jaime Soltero Jr", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Sarita Amaya", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Freddy Sotelo", username: "freddysotelo", password: "7e6s3dd8rf", spanish: false, has_children: true)
    Guest.create(name: "Diana Sotelo", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Freddy Sotelo", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Dave Peña", username: "davepena", password: "a3e5ev3d", spanish: false, has_children: false)
    Guest.create(name: "Dave Peña", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 99, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Sara & Mario", username: "saralopez", password: "z56o4ar8", spanish: false, has_children: true)
    Guest.create(name: "Sara Lopez", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "Mario A. Garza", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Bola Majekobaje", username: "bola", password: "ej5b38jam", spanish: false, has_children: false)
    Guest.create(name: "name", age: 99, party_id: p.id, attending: true, primary_guest: true)

    p = Party.create(name: "Tio Isidro", username: "tioisidro", password: "3rdisi6it", spanish: false, has_children: true)
    Guest.create(name: "Tio Isidro", age: 99, party_id: p.id, attending: true, primary_guest: true)
    Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Rodriguez", username: "diana", password: "2a4iad5", spanish: false, has_children: false)
    Guest.create(name: "Alberto", age: 99, party_id: p.id, attending: true, primary_guest: true)
    # Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    p = Party.create(name: "Candice Coots", username: "candicecoots", password: "st6ce4a2nc", spanish: false, has_children: false)
    Guest.create(name: "Candice Coots", age: 99, party_id: p.id, attending: true, primary_guest: true)
    # Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    # p = Party.create(name: "party_name", username: "user", password: "pwd", spanish: false, has_children: false)
    # Guest.create(name: "name", age: 99, party_id: p.id, attending: true, primary_guest: true)
    # Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    # p = Party.create(name: "party_name", username: "user", password: "pwd", spanish: false, has_children: false)
    # Guest.create(name: "name", age: 99, party_id: p.id, attending: true, primary_guest: true)
    # Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

    # p = Party.create(name: "party_name", username: "user", password: "pwd", spanish: false, has_children: false)
    # Guest.create(name: "name", age: 99, party_id: p.id, attending: true, primary_guest: true)
    # Guest.create(name: "", age: 1, party_id: p.id, attending: false, primary_guest: false)

  end

end