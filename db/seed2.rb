t = Time.now 


case
    when t.monday?
       p "on est lundi"
    when t.tuesday
       p "on est mardi"
    when t.wednesday
        p "on est mercredi"
    when t.thursday
        p "on est jeudi"
    when t.friday
        p "on est vendredi"
    when t.saturday
        p "on est samedi"
    else
        p "on est dimanche"
end