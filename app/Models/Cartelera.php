<<<<<<< HEAD

=======
<? php

namespace APP\Models;

use Illuminate\Database\Eloquent\Model;

class Cartelera extends Model
{
    protected $table = 'carteleras';

    public function lugar()
    {
        return $this->belongsToMany('App\Models\Lugares');
    }
}
>>>>>>> [ADD] Se agregan mas vistas y se corrigen para vista en mobiles, se agrega primer model incompleto para bd

<!-- <?php

//namespace App\Models;

//use Illuminate\Database\Eloquent\Model;

//class Article extends Model
{
  //  protected $table = 'articles';

//    public function sizes()
    {
  //      return $this->belongsToMany('App\Models\Size');
    }

    //public function getPriceFloatAttribute()
    {
      //  $price = (float) $this->attributes['price'] / 100;

        //return round($price, 2);
    }
} 