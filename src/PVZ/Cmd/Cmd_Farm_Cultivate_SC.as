package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_Farm_Cultivate_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_Farm_Cultivate_SC";
      
      public static const BLOCK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_Farm_Cultivate_SC.block","block",1 << 3 | WireType.LENGTH_DELIMITED,Dto_Farm_BlockInfo);
      
      public static const CDTIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("PVZ.Cmd.Cmd_Farm_Cultivate_SC.cdTime","cdTime",2 << 3 | WireType.VARINT);
       
      
      private var block$field:Dto_Farm_BlockInfo;
      
      private var cdTime$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function Cmd_Farm_Cultivate_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_Farm_Cultivate_SC.$MessageID;
      }
      
      public function clearBlock() : void
      {
         this.block$field = null;
      }
      
      public function get hasBlock() : Boolean
      {
         return this.block$field != null;
      }
      
      public function set block(param1:Dto_Farm_BlockInfo) : void
      {
         this.block$field = param1;
      }
      
      public function get block() : Dto_Farm_BlockInfo
      {
         return this.block$field;
      }
      
      public function clearCdTime() : void
      {
         this.hasField$0 &= 4294967294;
         this.cdTime$field = new uint();
      }
      
      public function get hasCdTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set cdTime(param1:uint) : void
      {
         this.hasField$0 |= 1;
         this.cdTime$field = param1;
      }
      
      public function get cdTime() : uint
      {
         return this.cdTime$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBlock)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.block$field);
         }
         if(this.hasCdTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.cdTime$field);
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
                     throw new IOError("Bad data format: Cmd_Farm_Cultivate_SC.block cannot be set twice.");
                  }
                  _loc3_++;
                  this.block = new Dto_Farm_BlockInfo();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.block);
                  break;
               case 2:
                  if(_loc4_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_Farm_Cultivate_SC.cdTime cannot be set twice.");
                  }
                  _loc4_++;
                  this.cdTime = ReadUtils.read$TYPE_UINT32(param1);
                  break;
               default:
                  super.readUnknown(param1,_loc5_);
                  break;
            }
         }
      }
   }
}
