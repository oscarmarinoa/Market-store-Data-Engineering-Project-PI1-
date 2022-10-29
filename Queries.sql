# We create the database we we are going to save all the information related to this project.
create database PI_1;
use PI_1;

-----------------------------------------------------------
# For the product table

# Products with the same id.
select producto_id
from producto
group by producto_id
having count(*) > 1;

# Products that are en the list that show repeated values.
select producto_id, nombre, marca, presentacion
from producto
where producto_id in (	select producto_id
						from producto
						group by producto_id
						having count(*) > 1)
                        
order by producto_id;

# Addtionally we can observ that there are products with same IDs but are different or viceversa among other problems. Normalization is executed.
update producto
set nombre = 'Fiambre Para Emparedado Fela Envasado Al Vacio 1 Kg'
where nombre = 'Fiambre Emparedados Al Vacio Fela 1 Kg';

update producto
set nombre = 'Queso Sardo Con Vitamina A Y D La Serenisima 1 Kg'
where nombre = 'Queso Sardo Vitamina A Y D La Serenisima 1 Kg';

update producto
set nombre = 'Queso Port Salut Light Trozado Tregar 1Kg'
where nombre = 'Queso Por Salut Light Trozado Tregar 1Kg';

update producto
set nombre = 'Salchichon Con Jamon Al Vacio La Medalla 1 Kg'
where nombre = 'Salchichon La Medalla Con Jamon Al Vacio 1 Kg';

update producto
set nombre = 'Salchichon Con Jamon Al Vacio La Medalla 1 Kg'
where nombre = 'Salamin Tipo Tandilense Picado Grueso Lario 1 Kg';

update producto
set nombre = 'Queso Port Salut Ilolay 1 Kg'
where nombre = 'Queso Por Salut Ilolay 1 Kg';

update producto
set nombre = 'Queso Port Salut Trozado Ilolay 1 Kg'
where nombre = 'Queso Por Salut Trozado Ilolay 1 Kg';

update producto
set presentacion = '22.0 Gr'
where presentacion = '2.38 Kg' and nombre = 'Mermelada Durazno Ilolay 108 Un 22 Gr';

update producto
set nombre = 'Queso Mozzarella La Paulina 1 Kg'
where nombre = 'Queso Mozzarella Paulina 1 Kg';

update producto
set nombre = 'Queso Mozzarella La Paulina 1 Kg'
where nombre = 'Queso Mozzarella Paulina 1 Kg';

update producto
set nombre = 'Queso Reggianito Fraccionado Tregar 1 Kg'
where nombre = 'Queso Reggianito Trozado Tregar 1 Kg';

update producto
set nombre = 'Panceta Salada Familiar Fraccionada Paladini 1Kg'
where nombre = 'Panceta Salada Familiar Trozada Paladini 1Kg';

update producto
set nombre = 'Panceta Ahumada Fraccionada Paladini 1 Kg'
where nombre = 'Panceta Ahumada Trozada Paladini 1 Kg';

update producto
set nombre = 'Fiambre Cerdo Y Pollo Cocido Don Otto 1 Kg'
where nombre = 'Fiambre Cocido Cerdo Y Pollo Don Otto 1 Kg';

update producto
set nombre = 'Salchichon Con Jamon Tradicion Cagnoli 1 Kg'
where nombre = 'Salchichon Con Jamon Tradicion 1 Kg';

update producto
set nombre = 'Dulce De Batata Con Dulce De Leche En Lata Otito 1 Kg'
where nombre = 'Dulce De Batata Con Dulce De Leche Lata Otito 1 Kg';

update producto
set nombre = 'Dulce De Batata Con Vainilla En Lata Otito 1 Kg'
where nombre = 'Dulce De Batata Vainilla En Lata Otito 1 Kg';

update producto
set nombre = 'Dulce De Batata Con Chocolate En Lata Otito 1 Kg'
where nombre = 'Dulce De Batata Chocolate En Lata Otito 1 Kg';

update producto
set nombre = 'Dulce De Batata Con Kinoto En Lata Otito 1 Kg'
where nombre = 'Dulce De Batata Con Kinoto Lata Otito 1 Kg';

update producto
set nombre = 'Camarones Chilenos Estancia San Gabriel 1 Kg'
where nombre = 'Camarones Chilenos 1 Kg';

update producto
set nombre = 'Panceta Ahumada La Francisca 1 Kg'
where nombre = 'Panceta Ahumada La Francisca 1Kg';

update producto
set nombre = 'Fiambre Paleta De Cerdo Paladini Envasado Al Vacio 1 Kg'
where nombre = 'Fiambre De Paleta De Cerdo Paladini 1 Kg';

update producto
set nombre = 'Lechuga Perezosa Comodin 1 Kg'
where nombre = 'Lechuga Perezosa 1 Kg';

update producto
set nombre = 'Queso Pategras Santa Narcisa 1 Kg'
where nombre = 'Queso Pategras Santa Narcisa1 Kg';

update producto
set nombre = 'Queso Port Salut Diet Porcionado La Serenisima 1 Kg'
where nombre = 'Queso Port Salut Diet Trozado La Serenisima 1 Kg';

update producto
set nombre = 'Queso Port Salut Diet Porcionado La Serenisima 1 Kg'
where nombre = 'Queso Port Salut Diet Trozado La Serenisima 1 Kg';

update producto
set marca = 'La Paulina'
where marca = 'Paulina';

update producto
set marca = 'La Piamontesa'
where marca = 'Piamontesa';

# Data with same id but no brand assigned,

update producto
set marca = 'Estancia San Gabriel'
where marca = 'Sin Marca' and nombre = 'Sabalo Entero Congelado Estancia San Gabriel 1 Kg';

update producto
set marca = 'Cimmino'
where marca = 'Sin Marca' and nombre = 'Tripa Gorda 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Zanahoria 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Tomate Redondo 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Coliflor 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Uva Negra 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Mango 1 Kg';

update producto
set marca = 'Comodín'
where marca = 'Sin Marca' and nombre = 'Hinojo Comodin 1 Kg';
---------------------------------------------------------------------------
# Code to verify if there are sucursales with repeated ID
select *, count(id)
from sucursal
group by id
having count(id) > 2;

select banderaDescripcion
from sucursal
group by banderaDescripcion
having count(banderaDescripcion) > 2;
-----------------------------------------------------------------------------
    # From the sucursal table we obtain the sucursalid to create a surrogate key. We split the sucursal_id colum using substring_index. This value is saved in a created view.
create view sucursal_id_tabla as
select sucursal_id, latitud, longitud,
substring_index(sucursal_id,'-',-1)  as sucursalid
from sucursal;

# Creation of a colum to ad sucursalid
alter table sucursal add sucursalid int not null after banderaid;

# Entering the values of sucursalid from the vreated view to the table sucursal.
update sucursal s
join sucursal_id_tabla st on (s.latitud = st.latitud and s.longitud = st.longitud and s.sucursal_id = st.sucursal_id)
set s.sucursalid = st.sucursalid;

# In this section we create several entity tables to create the id of each entity. After that we ingested the corresponding data to the tables using sucursal.
drop table if exists provincia;
create table provincia(
	ProvinciaId		int not null auto_increment primary key,
    Provincia		varchar(50));
    
insert into provincia(Provincia)
select dif_provincias
from (	select distinct provincia as dif_provincias
		from sucursal
		order by 1) s;
        
drop table if exists localidad;
create table localidad(
	LocalidadId		int not null auto_increment primary key,
    Localidad 		varchar(100))ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    
insert into localidad(Localidad)
select dif_localidad
from (	select distinct localidad as dif_localidad
		from sucursal
		order by 1) s;

drop table if exists sucursaltipo;
create table sucursaltipo(
	IdTipoSucursal int not null auto_increment primary key,
    Tipo	varchar(50))ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into sucursaltipo(Tipo)
select dif_tipo
from (	select distinct sucursaltipo as dif_tipo
		from sucursal
		order by 1)s;
        
# After that, we created the columns in sucursal in order to ingest them with data from the created tables.
alter table sucursal add ProvinciaId int,
					 add Sucursaltipoid	int,
                     add LocalidadId int;
update sucursal s
join sucursaltipo sp on (s.sucursalTipo = sp.Tipo)
set s.sucursaltipoid = sp.idtiposucursal;
						
update sucursal s
join provincia p on (s.provincia = p.provincia)
set s.provinciaid = p.provinciaid;

update sucursal s
join localidad l on (s.localidad = l.localidad)
set s.localidadid = l.localidadid;

alter table sucursal drop sucursalid_final;
alter table sucursal add sucursalid_final int not null after sucursal_id;

# After havind all the Ids from the different entities ready, we create a surrogate field that will be used to correlate the dataset.
update sucursal
set sucursalid_final = (sucursaltipoid*1000000 + provinciaid*100000 + comercioid * banderaid + sucursalid + round(latitud) - round(longitud) + localidadid);

# Unfortunately, the data has to be more normalized in order to create the relationships among tables. Even if the surrogate key is complex, there is still duplicate entries for this parameter.
ALTER TABLE sucursal ADD PRIMARY KEY(sucursalid_final);

# There is still 19 values with the same surrogate code.
select distinct sucursalid_final, count(*)
from sucursal
group by sucursalid_final
having count(sucursalid_final) > 2;

--------------------------------------------------------------
# Principal Querie
select round(avg(precio),2) as precio_promedio_sucursal_9_1_688
from precio
where comercioid = 9 and banderaid = 1 and sucursalid = 688;
    


    