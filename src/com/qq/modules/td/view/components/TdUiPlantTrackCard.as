package com.qq.modules.td.view.components
{
   import com.qq.display.TDCardItem;
   import com.qq.modules.td.model.vo.TDCardData;
   import com.qq.modules.td.view.helpers.TDStaticInfoToolTipHelper;
   
   public class TdUiPlantTrackCard extends TdUiPlantTrackCardCE
   {
      
      private static var counter:int;
       
      
      public var cardData:TDCardData;
      
      private var toolTipHelper:TDStaticInfoToolTipHelper;
      
      public function TdUiPlantTrackCard(param1:TDCardData)
      {
         this.cardData = param1;
         id = "tdUiPlantTrackCard_" + ++counter;
         super();
      }
      
      public function Close() : void
      {
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
         this.Dispose();
      }
      
      override public function Dispose() : void
      {
         if(this.toolTipHelper)
         {
            this.toolTipHelper.removeListen();
            this.toolTipHelper = null;
         }
         this.cardData = null;
         super.Dispose();
      }
      
      override public function InitializeComponent() : void
      {
         super.InitializeComponent();
         var _loc1_:TDCardItem = new TDCardItem();
         _loc1_.setMaskBarVisible(false);
         _loc1_.setCard(this.cardData.plantStaticInfo.baseInfo.id,this.cardData.plantInfo.avatarId);
         bg.addChild(_loc1_);
         this.toolTipHelper = new TDStaticInfoToolTipHelper(false);
         this.toolTipHelper.addListen(this,this.cardData);
         this.mouseBackground = true;
      }
      
      override public function set x(param1:Number) : void
      {
         setX(param1);
      }
   }
}
