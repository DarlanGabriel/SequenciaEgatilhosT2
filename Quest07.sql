create trigger add_milhas after
insert cliente_voo
as
UPDATE voo SET num_passageiros = num_passageiros + 1;
