class IDatabase{

  void Create(){}
  void Read(){}
  void Update(){}
  void Delete(){}
}

class ProdDatabase implements IDatabase {
  void Create(){
    print('Create Production database');
  }
  void Read(){
    print('Read prod');
  }
  void Update(){
  print('Update prod');
  }
  void Delete(){
    print('Delete prod');
  }
}

class MockDataBase implements IDatabase{
  void Create(){
    print('DEV-DB Create');
  }
  void Read(){
    print('DEV-DB Read');
  }
  void Update(){
    print('DEV-DB Update');
  }
  void Delete(){
    print('DEV-DB Update');
  }
}
// Void main kallar í classa ProdDatabase
// ef ég breyti ProdDatabase prodDB = new ProdDatabase(); í MockDataBase prodDB = new MockdataBase(); þá kallar hann á classa MockDataBase
void main(){
 // ProdDatabase prodDB = new ProdDatabase();
  MockDataBase prodDB = new MockDataBase();
  prodDB.Create();
  prodDB.Read();
  prodDB.Update();
  prodDB.Delete();

}