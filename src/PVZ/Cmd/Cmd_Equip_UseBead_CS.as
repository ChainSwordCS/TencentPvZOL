package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WritingBuffer;
   import flash.utils.IDataInput;
   
   public final class Cmd_Equip_UseBead_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_Equip_UseBead_CS";
       
      
      public function Cmd_Equip_UseBead_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_Equip_UseBead_CS.$MessageID;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc3_ = ReadUtils.read$TYPE_UINT32(param1);
            var _loc4_:* = _loc3_ >> 3;
            switch(0)
            {
            }
            super.readUnknown(param1,_loc3_);
         }
      }
   }
}
