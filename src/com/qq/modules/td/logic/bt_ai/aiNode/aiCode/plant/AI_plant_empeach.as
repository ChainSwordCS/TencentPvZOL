package com.qq.modules.td.logic.bt_ai.aiNode.aiCode.plant
{
   import com.qq.constant.td.TDConstant;
   import com.qq.modules.td.logic.bt_ai.aiNode.BasePlantNodePvz;
   import com.qq.modules.td.logic.bt_ai.aiNode.executeNode.plant.ExePlantAttack;
   
   public class AI_plant_empeach extends BasePlantNodePvz
   {
       
      
      public function AI_plant_empeach(param1:int = 30)
      {
         super(param1);
      }
      
      override public function calculate() : Boolean
      {
         ExePlantAttack.calculate(selfObj,TDConstant.PEmpeachAction_Explode);
         return true;
      }
   }
}
