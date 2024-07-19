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
# Modal Class Example
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
<P>
  <img src="https://github.com/harshdusane2103/CH-8_JSON_Parsing/blob/master/json.png" width=21%,heigth=35%>

</P>
<p>
  <video src="https://github.com/user-attachments/assets/63629090-b671-4409-9944-3d5293941a78">
</p>
<div align = "center">
<a  href="">👉 Go To Dart File 👈</a>
</div>
<h1 align="left"> </h1>
