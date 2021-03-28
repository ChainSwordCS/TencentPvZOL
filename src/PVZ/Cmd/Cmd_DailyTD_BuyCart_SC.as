package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_DailyTD_BuyCart_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_DailyTD_BuyCart_SC";
      
      public static const CARTID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_DailyTD_BuyCart_SC.cartId","cartId",1 << 3 | WireType.VARINT);
      
      public static const REMAINTIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_DailyTD_BuyCart_SC.remainTimes","remainTimes",2 << 3 | WireType.VARINT);
       
      
      private var cartId$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var remainTimes$field:uint;
      
      public function Cmd_DailyTD_BuyCart_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_DailyTD_BuyCart_SC.$MessageID;
      }
      
      public function clearCartId() : void
      {
         this.hasField$0 &= 4294967294;
         this.cartId$field = new uint();
      }
      
      public function get hasCartId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set cartId(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.cartId$field = param1;
      }
      
      public function get cartId() : uint
      {
         return this.cartId$field;
      }
      
      public function clearRemainTimes() : void
      {
         this.hasField$0 &= 4294967293;
         this.remainTimes$field = new uint();
      }
      
      public function get hasRemainTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainTimes(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.remainTimes$field = param1;
      }
      
      public function get remainTimes() : uint
      {
         return this.remainTimes$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCartId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.cartId$field);
         }
         if(this.hasRemainTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remainTimes$field);
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
                     throw new IOError("Bad data format: Cmd_DailyTD_BuyCart_SC.cartId cannot be set twice.");
                  }
                  _loc3_++;
                  this.cartId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_DailyTD_BuyCart_SC.remainTimes cannot be set twice.");
                  }
                  _loc4_++;
                  this.remainTimes = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
