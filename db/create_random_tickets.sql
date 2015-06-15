CALL _development_manage_create_ticket(1, 1,'5498732', 200.32);
CALL _development_manage_create_ticket(1, 1,'3265731', 300.32);

update cas_tck_mextickets 
    set tck_c_maquina = "FF00FF00FF00"
    where tck_c_code in (3265731, 5498732);
