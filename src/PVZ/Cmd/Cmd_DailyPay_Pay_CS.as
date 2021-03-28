package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_DailyPay_Pay_CS extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_DailyPay_Pay_CS";
      
      public static const GOODSID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_DailyPay_Pay_CS.goodsId","goodsId",1 << 3 | WireType.VARINT);
      
      public static const GOODSURL:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("PVZ.Cmd.Cmd_DailyPay_Pay_CS.goodsUrl","goodsUrl",2 << 3 | WireType.LENGTH_DELIMITED);
       
      
      private var goodsId$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var goodsUrl$field:String;
      
      public function Cmd_DailyPay_Pay_CS()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_DailyPay_Pay_CS.$MessageID;
      }
      
      public function clearGoodsId() : void
      {
         this.hasField$0 &= 4294967294;
         this.goodsId$field = new uint();
      }
      
      public function get hasGoodsId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set goodsId(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.goodsId$field = param1;
      }
      
      public function get goodsId() : uint
      {
         return this.goodsId$field;
      }
      
      public function clearGoodsUrl() : void
      {
         this.goodsUrl$field = null;
      }
      
      public function get hasGoodsUrl() : Boolean
      {
         return this.goodsUrl$field != null;
      }
      
      public function set goodsUrl(param1:String) : void
      {
         this.goodsUrl$field = param1;
      }
      
      public function get goodsUrl() : String
      {
         return this.goodsUrl$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGoodsId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.goodsId$field);
         }
         if(this.hasGoodsUrl)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.goodsUrl$field);
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
                     throw new IOError("Bad data format: Cmd_DailyPay_Pay_CS.goodsId cannot be set twice.");
                  }
                  _loc3_++;
                  this.goodsId = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_DailyPay_Pay_CS.goodsUrl cannot be set twice.");
                  }
                  _loc4_++;
                  this.goodsUrl = ReadUtils.read$TYPE_STRING(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
