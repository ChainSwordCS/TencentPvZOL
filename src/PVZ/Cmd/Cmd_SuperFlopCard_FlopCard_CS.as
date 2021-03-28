package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_SuperFlopCard_FlopCard_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_SuperFlopCard_FlopCard_CS";
      
      public static const FLOPCARDTYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("PVZ.Cmd.Cmd_SuperFlopCard_FlopCard_CS.flopCardType","flopCardType",1 << 3 | WireType.VARINT,E_FlopCardType);
      
      public static const ACTIVITYID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_SuperFlopCard_FlopCard_CS.activityId","activityId",2 << 3 | WireType.VARINT);
       
      
      private var flopCardType$field:int;
      
      private var hasField$0:uint = 0;
      
      private var activityId$field:uint;
      
      public function Cmd_SuperFlopCard_FlopCard_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_SuperFlopCard_FlopCard_CS.$MessageID;
      }
      
      public function clearFlopCardType() : void
      {
         this.hasField$0 &= 4294967294;
         this.flopCardType$field = new int();
      }
      
      public function get hasFlopCardType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set flopCardType(param1:int) : void
      {
         this.hasField$0 |= 1;
         this.flopCardType$field = param1;
      }
      
      public function get flopCardType() : int
      {
         return this.flopCardType$field;
      }
      
      public function clearActivityId() : void
      {
         this.hasField$0 &= 4294967293;
         this.activityId$field = new uint();
      }
      
      public function get hasActivityId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set activityId(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.activityId$field = param1;
      }
      
      public function get activityId() : uint
      {
         return this.activityId$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFlopCardType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.flopCardType$field);
         }
         if(this.hasActivityId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.activityId$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc5_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc5_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_SuperFlopCard_FlopCard_CS.flopCardType cannot be set twice.");
                  }
                  _loc3_++;
                  this.flopCardType = ReadUtils.read$TYPE_ENUM(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_SuperFlopCard_FlopCard_CS.activityId cannot be set twice.");
                  }
                  _loc4_++;
                  this.activityId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
