package com.qq.modules.levelselect.model.templates.ce
{
   public class LSChallengePromoteBonusTemplateCE
   {
       
      
      protected var _id:Number;
      
      protected var _min:Number;
      
      protected var _max:Number;
      
      protected var _bonus:String;
      
      public function LSChallengePromoteBonusTemplateCE()
      {
         super();
      }
      
      public function load(param1:Object) : void
      {
         this._id = param1.id;
         this._min = param1.min;
         this._max = param1.max;
         this._bonus = param1.bonus;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get min() : Number
      {
         return this._min;
      }
      
      public function get max() : Number
      {
         return this._max;
      }
      
      public function get bonus() : String
      {
         return this._bonus;
      }
   }
}
