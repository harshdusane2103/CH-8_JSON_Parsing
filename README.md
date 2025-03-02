<h1 align="center">⚡What is JSON & JSON Parsing ⚡</h1>
# Use OF  Provider IN JSON Data : <br>
# Provider Class Example :


```bash
                  
    class JSONProvider extends ChangeNotifier 
    {
          List<PhotoModal> photolist = [];
                     Future<List> jsonparsing() async {
                      String json = await rootBundle.loadString('asstes/JSON/photo.json');
                      List photo = jsonDecode(json);
                      return photo;
                    }
                    Future<void> fromlist() async {
                      List Photo = await jsonparsing();
                      photolist = Photo.map((e) => PhotoModal.fromMap(e)).toList();
                      notifyListeners();
                    }




                     JSONProvider() {
                      fromlist();
                    }
      }



```

# Modal Class Example :



```bash
 
class PhotoModal
{
   late String url;
   late String title;
   PhotoModal({required this.url,required this.title});
   factory PhotoModal.fromMap( Map m1)
   {
      return PhotoModal(url: m1['url'], title:m1['title']);

   }
}

```
<div align="center">
  <img src="https://github.com/harshdusane2103/CH-8_JSON_Parsing/blob/master/json.png" width=21%,heigth=35%>

</div>
<div align = "center">
  <video src="https://github.com/user-attachments/assets/63629090-b671-4409-9944-3d5293941a78">
</div>
<div align = "center">
<a  href="https://github.com/harshdusane2103/CH-8_JSON_Parsing/tree/master/lib/8.1_JSON%20parsing">👉 Go To Dart File 👈</a>
</div>
<h1 align="left"> </h1>


<h1 align="center">⚡Use of Nested Map In JSON Data⚡</h1>

# Provider Class Example :


```bash
                  
   class Userprovider extends ChangeNotifier {
  List<UserModal> Userlist = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('asstes/JSON/user.json');
    List photo = jsonDecode(json);
    Userlist = photo.map((e) => UserModal.fromMap(e)).toList();
    notifyListeners();
  }

  Userprovider() {
    jsonParsing();
  }
}



```

# Modal Class Example :



```bash
 
class UserModal {
  late int id;
  late String name, username, email;
  late Address address;
  late Company company;

  UserModal(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.company});

  factory UserModal.fromMap(Map m1) {
    return UserModal(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        address: Address.fromMap(m1['address']),
        company: Company.fromMap(m1['company']));
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromMap(Map m1) {
    return Address(
        street: m1['street'],
        suite: m1['suite'],
        city: m1['city'],
        zipcode: m1['zipcode'],
        geo: Geo.fromMap(m1['geo']));
  }
}

class Geo {
  late String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromMap(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromMap(Map m1) {
    return Company(
        name: m1['name'], catchPhrase: m1['catchPhrase'], bs: m1['bs']);
  }
}


```
<div align = "center">
 <img src="https://github.com/harshdusane2103/CH-8_JSON_Parsing/blob/master/user.png" width=21%,heigth=35%,align="center">
</div>
<div align = "center">
  <video src="https://github.com/user-attachments/assets/c26f9b93-e467-48c4-9e12-6103b56cbd07">
</div>
<div align = "center">
<a  href="https://github.com/harshdusane2103/CH-8_JSON_Parsing/tree/master/lib/User_JSON">👉 Go To Dart File 👈</a>
</div>




<h1 align="center">⚡8.3 Json Data Parsing⚡</h1>

# Provider Class Example :


```bash
       

class PostProvider extends ChangeNotifier
{
  late PostModal postModal;

  Future<void> initModal()
  async {
    String json = await rootBundle.loadString('asstes/JSON/post.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }

  PostProvider()
  {
    initModal();
  }
}


          
   

```

# Modal Class Example :



```bash
 


class PostModal {
  late int total, skip, limit;
  late List<Post> posts;

  PostModal(
      {required this.total,
        required this.skip,
        required this.limit,
        required this.posts});

  factory PostModal.fromJson(Map m1) {
    return PostModal(
        total: m1['total'],
        skip: m1['skip'],
        limit: m1['limit'],
        posts: (m1['posts'] as List)
            .map(
              (e) => Post.fromJson(e),
        )
            .toList());
  }
}

class Post {
  late int id, views, userId;
  late String title, body;
  late List tags;
  late Reaction reaction;

  Post(
      {required this.id,
        required this.views,
        required this.userId,
        required this.title,
        required this.body,
        required this.tags,
        required this.reaction});

  factory Post.fromJson(Map m1) {
    return Post(
        id: m1['id'],
        views: m1['views'],
        userId: m1['userId'],
        title: m1['title'],
        body: m1['body'],
        tags: m1['tags'],
        reaction: Reaction.fromJson(m1['reactions']));
  }
}

class Reaction {
  late int likes, dislikes;

  Reaction({required this.likes, required this.dislikes});

  factory Reaction.fromJson(Map m1) {
    return Reaction(likes: m1['likes'], dislikes: m1['dislikes']);
  }
}

```
<div align = "center">
 <img src="https://github.com/harshdusane2103/CH-8_JSON_Parsing/blob/master/post.png" width=21%,heigth=35%,align="center">
</div>
<div align = "center">
  <video src="https://github.com/user-attachments/assets/fe5215d6-28c7-4d0d-9607-dc4ae53b9d04">
</div>
<div align = "center">
<a  href="https://github.com/harshdusane2103/CH-8_JSON_Parsing/tree/master/lib/Post">👉 Go To Dart File 👈</a>




</div>


