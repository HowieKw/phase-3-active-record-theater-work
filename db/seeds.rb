Audition.destroy_all
Role.destroy_all

r1 = Role.create(character_name: 'Skywalker')
r2 = Role.create(character_name: 'Wookie')
r3 = Role.create(character_name: 'Boba Fet')
r4 = Role.create(character_name: 'R2D2')

a1 = Audition.create(
    actor: 'Mark', 
    location: 'Death Star', 
    phone: 1234567, 
    hired: false, 
    role_id: r1.id
    )

a2 = Audition.create(
    actor: 'Ted', 
    location: 'Death Star', 
    phone: 12345678, 
    hired: false, 
    role_id: r2.id
    )

a3 = Audition.create(
    actor: 'R2', 
    location: 'Death Star', 
    phone: 123456789, 
    hired: true, 
    role_id: r4.id
    )