
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
