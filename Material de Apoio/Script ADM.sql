-- criar usuário supervisor
create user 'supervisor'@'localhost' identified by 'urubu100';

-- permissões do usuário
grant SELECT, UPDATE, DELETE, INSERT on sptechb.* 
							to 'supervisor'@'localhost';

-- confirmar as permissões
flush privileges;

-- retirar as permissões
revoke SELECT, UPDATE, DELETE, INSERT on sptechb.* 
	from 'supervisor'@'localhost';

-- confirmar a retirada
flush privileges;

-- excluir o usuário
-- drop user 'supervisor'@'localhost';

-- adicionar todos os comandos para o usuário supervisor
GRANT ALL privileges on sptechb.* 
	TO 'supervisor'@'localhost';
    
FLUSH PRIVILEGES;