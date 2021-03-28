package PVZ.Cmd
{
   import com.tencent.protobuf.Int64;
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT64;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_Friend_DeleteEnergyInfo_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_Friend_DeleteEnergyInfo_CS";
      
      public static const INFOID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("PVZ.Cmd.Cmd_Friend_DeleteEnergyInfo_CS.infoId","infoId",1 << 3 | WireType.VARINT);
       
      
      private var infoId$field:Int64;
      
      public function Cmd_Friend_DeleteEnergyInfo_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_Friend_DeleteEnergyInfo_CS.$MessageID;
      }
      
      public function clearInfoId() : void
      {
         this.infoId$field = null;
      }
      
      public function get hasInfoId() : Boolean
      {
         return this.infoId$field != null;
      }
      
      public function set infoId(param1:Int64) : void
      {
         this.infoId$field = param1;
      }
      
      public function get infoId() : Int64
      {
         return this.infoId$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasInfoId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT64(param1,this.infoId$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_Friend_DeleteEnergyInfo_CS.infoId cannot be set twice.");
                  }
                  _loc3_++;
                  this.infoId = ReadUtils.read$TYPE_INT64(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
