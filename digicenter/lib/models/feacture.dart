

class Feacture {
     String name;
     String description;
     int Id ;
     bool status = false;

     Feacture({
       required this.name ,
       required this.status ,
       required this.description ,
       required this.Id
     });
}


List<Feacture>  listsFeactures  = [
      Feacture(status: true, description: "" ,name: "Administração e Gestão",Id: 1),
      Feacture(status: false, description: "" ,name: "Auditoria",Id: 2),
      Feacture(status: false, description: "" ,name: "Contabilidade",Id: 3),
      Feacture(status: false, description: "" ,name: "Fiscalidade angolana",Id: 4),
      Feacture(name: "Línguas", status: false, description:"", Id: 5),
      Feacture(name: "Marketing", status: false, description:"", Id: 8),
      Feacture(name: "Recursos humanos", status: false, description:"", Id: 9),
      Feacture(name:"Secretariado e trabalho administrativo",status:false, description:"",Id: 10),
      Feacture(name:"Saúde, higiene e segurança no trabalho", status:false,description: "",Id: 11),
      Feacture(name:"Vendas", status:false,description: "",Id: 12),
];


