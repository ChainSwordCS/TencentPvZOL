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
   
   public final class Dto_CalcWeight extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Dto_CalcWeight";
      
      public static const TICKETNUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_CalcWeight.ticketNum","ticketNum",1 << 3 | WireType.VARINT);
      
      public static const WEIGHT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Dto_CalcWeight.weight","weight",2 << 3 | WireType.VARINT);
       
      
      private var ticketNum$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var weight$field:uint;
      
      public function Dto_CalcWeight()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Dto_CalcWeight.$MessageID;
      }
      
      public function clearTicketNum() : void
      {
         this.hasField$0 &= 4294967294;
         this.ticketNum$field = new uint();
      }
      
      public function get hasTicketNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ticketNum(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.ticketNum$field = param1;
      }
      
      public function get ticketNum() : uint
      {
         return this.ticketNum$field;
      }
      
      public function clearWeight() : void
      {
         this.hasField$0 &= 4294967293;
         this.weight$field = new uint();
      }
      
      public function get hasWeight() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set weight(param1:uint) : void
      {
         this.hasField$0 |= 2;
         this.weight$field = param1;
      }
      
      public function get weight() : uint
      {
         return this.weight$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTicketNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ticketNum$field);
         }
         if(this.hasWeight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.weight$field);
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
                     throw new IOError("Bad data format: Dto_CalcWeight.ticketNum cannot be set twice.");
                  }
                  _loc3_++;
                  this.ticketNum = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Dto_CalcWeight.weight cannot be set twice.");
                  }
                  _loc4_++;
                  this.weight = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
